#!/bin/bash
# shellcheck disable=SC1091,SC2015
#
# Modes:
# 0 - Update all public (default)
# 1 - Update own public
# 2 - Just clean up
# 3 - Update all public and own private
# 4 - Update own public and private
# 5 - Update own private
#
# Usage: source bkg.sh && main [-m <mode>]

source lib/owner.sh

main() {
    local rotated=false
    local owners
    local repos
    local packages
    local pkg_left
    local db_size_curr
    local db_size_prev
    local connections
    connections=$(mktemp) || exit 1

    while getopts "m:" flag; do
        case ${flag} in
        m)
            BKG_MODE=$((OPTARG))
            ;;
        ?)
            echo "Invalid option found: -${OPTARG}."
            exit 1
            ;;
        esac
    done

    today=$(date -u +%Y-%m-%d)
    BKG_SCRIPT_START=$(date -u +%s)
    [ -n "$(get_BKG BKG_BATCH_FIRST_STARTED)" ] || set_BKG BKG_BATCH_FIRST_STARTED "$today"
    [ -n "$(get_BKG BKG_RATE_LIMIT_START)" ] || set_BKG BKG_RATE_LIMIT_START "$(date -u +%s)"
    [ -n "$(get_BKG BKG_MIN_RATE_LIMIT_START)" ] || set_BKG BKG_MIN_RATE_LIMIT_START "$(date -u +%s)"
    [ -n "$(get_BKG BKG_CALLS_TO_API)" ] || set_BKG BKG_CALLS_TO_API "0"
    [ -n "$(get_BKG BKG_MIN_CALLS_TO_API)" ] || set_BKG BKG_MIN_CALLS_TO_API "0"
    [ -n "$(get_BKG BKG_LAST_SCANNED_ID)" ] || set_BKG BKG_LAST_SCANNED_ID "0"
    [ -n "$(get_BKG BKG_DIFF)" ] || set_BKG BKG_DIFF "0"
    BKG_BATCH_FIRST_STARTED=$(get_BKG BKG_BATCH_FIRST_STARTED)
    set_BKG BKG_OWNERS_QUEUE ""
    set_BKG BKG_TIMEOUT "0"
    set_BKG BKG_SCRIPT_START "$BKG_SCRIPT_START"

    # reset the rate limit if an hour has passed since the last run started
    if (($(get_BKG BKG_RATE_LIMIT_START) + 3600 <= $(date -u +%s))); then
        set_BKG BKG_RATE_LIMIT_START "$(date -u +%s)"
        set_BKG BKG_CALLS_TO_API "0"
    fi

    # reset the secondary rate limit if a minute has passed since the last run started
    if (($(get_BKG BKG_MIN_RATE_LIMIT_START) + 60 <= $(date -u +%s))); then
        set_BKG BKG_MIN_RATE_LIMIT_START "$(date -u +%s)"
        set_BKG BKG_MIN_CALLS_TO_API "0"
    fi

    if [ -f "$BKG_INDEX_SQL.zst" ]; then
        [ ! -f "$BKG_INDEX_DB" ] || mv "$BKG_INDEX_DB" "$BKG_INDEX_DB".bak
        unzstd -c "$BKG_INDEX_SQL.zst" | sqlite3 "$BKG_INDEX_DB"
    fi

    [ -f "$BKG_INDEX_DB" ] || {
        [ -f "$BKG_INDEX_DB".bak ] && mv "$BKG_INDEX_DB".bak "$BKG_INDEX_DB" || sqlite3 "$BKG_INDEX_DB" ""
    }
    sqlite3 "$BKG_INDEX_DB" "create table if not exists '$BKG_INDEX_TBL_PKG' (
        owner_id text,
        owner_type text not null,
        package_type text not null,
        owner text not null,
        repo text not null,
        package text not null,
        downloads integer not null,
        downloads_month integer not null,
        downloads_week integer not null,
        downloads_day integer not null,
        size integer not null,
        date text not null,
        primary key (owner_id, package, date)
    ); pragma auto_vacuum = full;"
    sqlite3 "$BKG_INDEX_DB" "select owner_id, owner, repo, package from '$BKG_INDEX_TBL_PKG' where date >= '$BKG_BATCH_FIRST_STARTED';" | sort -u >packages_already_updated
    sqlite3 "$BKG_INDEX_DB" "select owner_id, owner, repo, package from '$BKG_INDEX_TBL_PKG';" | sort -u >packages_all
    comm -13 packages_already_updated packages_all >packages_to_update
    pkg_left=$(wc -l <packages_to_update)
    echo "all: $(wc -l <packages_all)"
    echo "done: $(wc -l <packages_already_updated)"
    echo "left: $pkg_left"
    db_size_curr=$(stat -c %s "$BKG_INDEX_DB")
    db_size_prev=$(get_BKG BKG_DIFF)
    [ -n "$db_size_curr" ] || db_size_curr=0
    [ -n "$db_size_prev" ] || db_size_prev=0

    if [ "$BKG_MODE" -ne 2 ]; then
        if [ "$BKG_MODE" -eq 0 ] || [ "$BKG_MODE" -eq 3 ]; then
            sed -i '/^\s*$/d' "$BKG_OWNERS"
            echo >>"$BKG_OWNERS"
            awk 'NF' "$BKG_OWNERS" >owners.tmp && mv owners.tmp "$BKG_OWNERS"
            sed -i 's/^[[:space:]]*//;s/[[:space:]]*$//; /^$/d; /^0\/$/d' "$BKG_OWNERS"

            if [ "$GITHUB_OWNER" = "ipitio" ]; then
                sort -u <<<"$(
                    explore "$GITHUB_OWNER"
                    explore "$GITHUB_OWNER/$GITHUB_REPO"
                )" >"$connections"
                [[ "$(wc -l <"$BKG_OWNERS")" -ge $(($(wc -l <"$connections") + 100)) ]] || seq 1 2 | env_parallel --lb --halt soon,fail=1 page_owner
            else
                ! grep -q '/' "$BKG_OWNERS" || : >"$BKG_OWNERS"
                explore "$GITHUB_OWNER" people >"$connections"
            fi

            echo "$(
                cat "$BKG_OWNERS"
                find "$BKG_INDEX_DIR" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; 2>/dev/null | sort -u | awk '{print "0/"$1}'
            )" >"$BKG_OWNERS"
            [ ! -s packages_all ] || echo "$(
                awk -F'|' '{print "0/"$2}' packages_all
                awk -F'|' '{print $1"/"$2}' packages_all
                awk -F'|' '{print $2}' packages_all
            )" | sort -u | parallel "sed -i '\,^{}$,d' $BKG_OWNERS"

            echo "$(
                echo "0/$GITHUB_OWNER"
                cat "$connections"
                cat "$BKG_OWNERS"
            )" >"$BKG_OWNERS"

            awk '!seen[$0]++' "$BKG_OWNERS" >owners.tmp && mv owners.tmp "$BKG_OWNERS"
            sed -i '/^\(.*\/\)*\(solutions\|sponsors\|enterprise\|premium-support\)$/d' "$BKG_OWNERS"

            if [[ "$pkg_left" == "0" || "${db_size_curr::-1}" == "${db_size_prev::-1}" ]]; then
                set_BKG BKG_BATCH_FIRST_STARTED "$today"
                rm -f packages_to_update
                \cp packages_all packages_to_update
                : >packages_already_updated
            fi

            head -n $(($(wc -l <"$connections") + 100)) "$BKG_OWNERS" | env_parallel --lb save_owner
            awk -F'|' '{print $1"/"$2}' packages_to_update | sort -uR 2>/dev/null | head -n1000 | env_parallel --lb save_owner
            parallel "sed -i '\,^{}$,d' $BKG_OWNERS" <"$connections"
            set_BKG BKG_DIFF "$db_size_curr"
        else
            save_owner "$GITHUB_OWNER"
            explore "$GITHUB_OWNER" people >"$connections"
            [ ! -s "$connections" ] || env_parallel --lb save_owner <"$connections"
        fi

        rm -f "$connections"
        BKG_BATCH_FIRST_STARTED=$(get_BKG BKG_BATCH_FIRST_STARTED)
        [ -d "$BKG_INDEX_DIR" ] || mkdir "$BKG_INDEX_DIR"

        if [ "$GITHUB_OWNER" = "ipitio" ]; then
            get_BKG_set BKG_OWNERS_QUEUE | env_parallel --lb update_owner
        else # typically fewer owners
            run_parallel update_owner "$(get_BKG_set BKG_OWNERS_QUEUE)"
        fi

        sqlite3 "$BKG_INDEX_DB" "select owner_id, owner, repo, package from '$BKG_INDEX_TBL_PKG';" | sort -u >packages_all
        echo "Compressing the database..."
        sqlite3 "$BKG_INDEX_DB" ".dump" | zstd -22 --ultra --long -T0 -o "$BKG_INDEX_SQL".new.zst

        if [ -f "$BKG_INDEX_SQL".new.zst ]; then
            # rotate the database if it's greater than 2GB
            if [ -f "$BKG_INDEX_SQL".zst ] && [ "$(stat -c %s "$BKG_INDEX_SQL".new.zst)" -ge 2000000000 ]; then
                rotated=true
                echo "Rotating the database..."
                local older_db
                older_db="$(date -u +%Y.%m.%d)".zst
                [ ! -f "$older_db" ] || rm -f "$older_db"
                mv "$BKG_INDEX_SQL".zst "$older_db"
                sqlite3 "$BKG_INDEX_DB" "delete from '$BKG_INDEX_TBL_PKG' where date < '$BKG_BATCH_FIRST_STARTED';"
                sqlite3 "$BKG_INDEX_DB" "select name from sqlite_master where type='table' and name like '${BKG_INDEX_TBL_VER}_%';" | parallel --lb "sqlite3 '$BKG_INDEX_DB' 'delete from {} where date < \"$BKG_BATCH_FIRST_STARTED\";'"
                sqlite3 "$BKG_INDEX_DB" "vacuum;"
                rm -f "$BKG_INDEX_SQL".new.zst
                sqlite3 "$BKG_INDEX_DB" ".dump" | zstd -22 --ultra --long -T0 -o "$BKG_INDEX_SQL".new.zst
                echo "Rotated the database"
            fi

            mv "$BKG_INDEX_SQL".new.zst "$BKG_INDEX_SQL".zst
            chmod 666 "$BKG_INDEX_SQL".zst
            echo "Compressed the database"
        else
            echo "Failed to compress the database!"
        fi
    fi

    echo "Hydrating templates and cleaning up..."
    [ ! -f "$BKG_ROOT"/CHANGELOG.md ] || rm -f "$BKG_ROOT"/CHANGELOG.md
    \cp templates/.CHANGELOG.md "$BKG_ROOT"/CHANGELOG.md
    owners=$(awk -F'|' '{print $1}' packages_all | sort -u | wc -l)
    repos=$(awk -F'|' '{print $1"|"$3}' packages_all | sort -u | wc -l)
    packages=$(wc -l <packages_all)
    sed -i 's/\[DATE\]/'"$(date -u +%F)"'/g; s/\[OWNERS\]/'"$owners"'/g; s/\[REPOS\]/'"$repos"'/g; s/\[PACKAGES\]/'"$packages"'/g' "$BKG_ROOT"/CHANGELOG.md
    ! $rotated || echo "P.S. The database was rotated, but you can find all previous data under the [latest release](https://github.com/$GITHUB_OWNER/$GITHUB_REPO/releases/latest)." >>"$BKG_ROOT"/CHANGELOG.md
    [ ! -f "$BKG_ROOT"/README.md ] || rm -f "$BKG_ROOT"/README.md
    \cp templates/.README.md "$BKG_ROOT"/README.md
    sed -i 's/<GITHUB_OWNER>/'"$GITHUB_OWNER"'/g; s/<GITHUB_REPO>/'"$GITHUB_REPO"'/g; s/<GITHUB_BRANCH>/'"$GITHUB_BRANCH"'/g; s/\[PACKAGES\]/'"$packages"'/g; s/\[DATE\]/'"$today"'/g' "$BKG_ROOT"/README.md
    sed -i '/^BKG_VERSIONS_.*=/d; /^BKG_PACKAGES_.*=/d; /^BKG_OWNERS_.*=/d; /^BKG_TIMEOUT=/d' "$BKG_ENV"
    \cp "$BKG_ROOT"/README.md "$BKG_INDEX_DIR"/README.md
    # shellcheck disable=SC2016
    sed -i 's/src\/img\/logo-b.webp/logo-b.webp/g; s/```py/```prolog/g; s/```js/```jboss-cli/g' "$BKG_INDEX_DIR"/README.md
    \cp img/logo-b.webp "$BKG_INDEX_DIR"/logo-b.webp
    \cp img/logo.ico "$BKG_INDEX_DIR"/favicon.ico
    \cp templates/.index.html "$BKG_INDEX_DIR"/index.html
    \cp templates/fxp.min.js "$BKG_INDEX_DIR"/fxp.min.js
    sed -i 's/GITHUB_REPO/'"$GITHUB_REPO"'/g' "$BKG_INDEX_DIR"/index.html
    rm -f packages_already_updated packages_all packages_to_update
    echo "{
        \"owners\":\"$(numfmt <<<"$owners")\",
        \"repos\":\"$(numfmt <<<"$repos")\",
        \"packages\":\"$(numfmt <<<"$packages")\",
        \"raw_owners\":$owners,
        \"raw_repos\":$repos,
        \"raw_packages\":$packages,
        \"date\":\"$today\"
    }" | tr -d '\n' | jq -c . >"$BKG_INDEX_DIR"/.json
    ytox "$BKG_INDEX_DIR"/.json
    echo "Done!"
}
