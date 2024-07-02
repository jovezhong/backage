<div align="center">

# badges

## for GitHub Packages

A [JSON Endpoint](#endpoint) backed by a [SQLite Dataset](#database) to supplement the API.

</div>

---

With the help of GitHub Actions, `update.sh` makes possible the following badges, and more! To make a badge, you can modify one below or generate one with something like [shields.io/json](https://shields.io/badges/dynamic-json-badge) and [these parameters](#url). The index is always growing; to add any users or orgs post-haste, you can either:

* open an issue, or
* add the (case-sensitive) name of each one on a new line in `owners.txt` on your own fork [here](https://github.com/ipitio/badges/edit/master/owners.txt) and make a pull request.

### Examples

[![users/container/arevindh/pihole-speedtest/pihole-speedtest/downloads](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.downloads&label=pihole-speedtest)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![users/container/arevindh/pihole-speedtest/pihole-speedtest/downloads/month](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.downloads_month&label=month)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![users/container/arevindh/pihole-speedtest/pihole-speedtest/downloads/week](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.downloads_week&label=week)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![users/container/arevindh/pihole-speedtest/pihole-speedtest/downloads/day](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.downloads_day&label=day)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![users/container/arevindh/pihole-speedtest/pihole-speedtest/size](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.size&label=size&color=a0a)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![users/container/arevindh/pihole-speedtest/pihole-speedtest/versions](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.versions&label=versions&color=0a0)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![users/container/arevindh/pihole-speedtest/pihole-speedtest/releases](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.tagged&label=releases&color=0a0)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![users/container/arevindh/pihole-speedtest/pihole-speedtest/latest](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner_type%3D%3D%22users%22%20%26%26%20%40.package_type%3D%3D%22container%22%20%26%26%20%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.version%5B%3F(%40.tags.indexOf(%22latest%22)!%3D-1)%5D.tags%5B%3F(%40!%3D%22latest%22)%5D&label=latest&color=0a0)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![users/container/arevindh/pihole-speedtest/pihole-speedtest/newest](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22arevindh%22%20%26%26%20%40.repo%3D%3D%22pihole-speedtest%22%20%26%26%20%40.package%3D%3D%22pihole-speedtest%22)%5D.version%5B%3F(%40.newest%3D%3Dtrue)%5D.name&label=newest&color=0a0)](https://github.com/arevindh/pihole-speedtest/pkgs/container/pihole-speedtest) [![orgs/container/aquasecurity/trivy-db/trivy-db](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22trivy-db%22%20%26%26%20%40.package%3D%3D%22trivy-db%22)%5D.downloads&label=trivy-db)](https://github.com/aquasecurity/trivy-db/pkgs/container/trivy-db) [![users/container/drakkan/sftpgo/sftpgo](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22drakkan%22%20%26%26%20%40.repo%3D%3D%22sftpgo%22%20%26%26%20%40.package%3D%3D%22sftpgo%22)%5D.downloads&label=sftpgo)](https://github.com/drakkan/sftpgo/pkgs/container/sftpgo) [![orgs/container/aquasecurity/trivy-operator/trivy-operator](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22trivy-operator%22%20%26%26%20%40.package%3D%3D%22trivy-operator%22)%5D.downloads&label=trivy-operator)](https://github.com/aquasecurity/trivy-operator/pkgs/container/trivy-operator) [![orgs/container/aquasecurity/trivy/trivy](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22trivy%22%20%26%26%20%40.package%3D%3D%22trivy%22)%5D.downloads&label=trivy)](https://github.com/aquasecurity/trivy/pkgs/container/trivy) [![orgs/container/aquasecurity/trivy-java-db/trivy-java-db](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22trivy-java-db%22%20%26%26%20%40.package%3D%3D%22trivy-java-db%22)%5D.downloads&label=trivy-java-db)](https://github.com/aquasecurity/trivy-java-db/pkgs/container/trivy-java-db) [![orgs/container/FlareSolverr/FlareSolverr/flaresolverr](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22FlareSolverr%22%20%26%26%20%40.repo%3D%3D%22FlareSolverr%22%20%26%26%20%40.package%3D%3D%22flaresolverr%22)%5D.downloads&label=flaresolverr)](https://github.com/FlareSolverr/FlareSolverr/pkgs/container/flaresolverr) [![orgs/container/home-assistant/core/home-assistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22home-assistant%22)%5D.downloads&label=home-assistant)](https://github.com/home-assistant/core/pkgs/container/home-assistant) [![orgs/container/home-assistant/supervisor/amd64-hassio-supervisor](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22supervisor%22%20%26%26%20%40.package%3D%3D%22amd64-hassio-supervisor%22)%5D.downloads&label=amd64-hassio-supervisor)](https://github.com/home-assistant/supervisor/pkgs/container/amd64-hassio-supervisor) [![orgs/container/aquasecurity/k8s-node-collector/node-collector](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22k8s-node-collector%22%20%26%26%20%40.package%3D%3D%22node-collector%22)%5D.downloads&label=node-collector)](https://github.com/aquasecurity/k8s-node-collector/pkgs/container/node-collector) [![orgs/container/home-assistant/core/qemux86-64-homeassistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22qemux86-64-homeassistant%22)%5D.downloads&label=qemux86-64-homeassistant)](https://github.com/home-assistant/core/pkgs/container/qemux86-64-homeassistant) [![orgs/container/home-assistant/supervisor/aarch64-hassio-supervisor](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22supervisor%22%20%26%26%20%40.package%3D%3D%22aarch64-hassio-supervisor%22)%5D.downloads&label=aarch64-hassio-supervisor)](https://github.com/home-assistant/supervisor/pkgs/container/aarch64-hassio-supervisor) [![orgs/container/home-assistant/core/raspberrypi4-64-homeassistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22raspberrypi4-64-homeassistant%22)%5D.downloads&label=raspberrypi4-64-homeassistant)](https://github.com/home-assistant/core/pkgs/container/raspberrypi4-64-homeassistant) [![orgs/container/Mailu/Mailu/clamav](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22Mailu%22%20%26%26%20%40.repo%3D%3D%22Mailu%22%20%26%26%20%40.package%3D%3D%22clamav%22)%5D.downloads&label=clamav)](https://github.com/Mailu/Mailu/pkgs/container/clamav) [![orgs/container/k3d-io/k3d/k3d-tools](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22k3d-io%22%20%26%26%20%40.repo%3D%3D%22k3d%22%20%26%26%20%40.package%3D%3D%22k3d-tools%22)%5D.downloads&label=k3d-tools)](https://github.com/k3d-io/k3d/pkgs/container/k3d-tools) [![orgs/container/gethomepage/homepage/homepage](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22gethomepage%22%20%26%26%20%40.repo%3D%3D%22homepage%22%20%26%26%20%40.package%3D%3D%22homepage%22)%5D.downloads&label=homepage)](https://github.com/gethomepage/homepage/pkgs/container/homepage) [![orgs/container/k3d-io/k3d/k3d-proxy](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22k3d-io%22%20%26%26%20%40.repo%3D%3D%22k3d%22%20%26%26%20%40.package%3D%3D%22k3d-proxy%22)%5D.downloads&label=k3d-proxy)](https://github.com/k3d-io/k3d/pkgs/container/k3d-proxy) [![orgs/container/aquasecurity/defsec/defsec](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22defsec%22%20%26%26%20%40.package%3D%3D%22defsec%22)%5D.downloads&label=defsec)](https://github.com/aquasecurity/defsec/pkgs/container/defsec) [![orgs/container/aquasecurity/trivy-checks/trivy-policies](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22trivy-checks%22%20%26%26%20%40.package%3D%3D%22trivy-policies%22)%5D.downloads&label=trivy-policies)](https://github.com/aquasecurity/trivy-checks/pkgs/container/trivy-policies) [![users/container/ajnart/homarr/homarr](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22ajnart%22%20%26%26%20%40.repo%3D%3D%22homarr%22%20%26%26%20%40.package%3D%3D%22homarr%22)%5D.downloads&label=homarr)](https://github.com/ajnart/homarr/pkgs/container/homarr) [![orgs/container/home-assistant/plugin-cli/aarch64-hassio-cli](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-cli%22%20%26%26%20%40.package%3D%3D%22aarch64-hassio-cli%22)%5D.downloads&label=aarch64-hassio-cli)](https://github.com/home-assistant/plugin-cli/pkgs/container/aarch64-hassio-cli) [![orgs/container/home-assistant/plugin-audio/aarch64-hassio-audio](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-audio%22%20%26%26%20%40.package%3D%3D%22aarch64-hassio-audio%22)%5D.downloads&label=aarch64-hassio-audio)](https://github.com/home-assistant/plugin-audio/pkgs/container/aarch64-hassio-audio) [![orgs/container/home-assistant/plugin-cli/amd64-hassio-cli](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-cli%22%20%26%26%20%40.package%3D%3D%22amd64-hassio-cli%22)%5D.downloads&label=amd64-hassio-cli)](https://github.com/home-assistant/plugin-cli/pkgs/container/amd64-hassio-cli) [![orgs/container/home-assistant/core/raspberrypi4-homeassistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22raspberrypi4-homeassistant%22)%5D.downloads&label=raspberrypi4-homeassistant)](https://github.com/home-assistant/core/pkgs/container/raspberrypi4-homeassistant) [![orgs/container/home-assistant/plugin-observer/aarch64-hassio-observer](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-observer%22%20%26%26%20%40.package%3D%3D%22aarch64-hassio-observer%22)%5D.downloads&label=aarch64-hassio-observer)](https://github.com/home-assistant/plugin-observer/pkgs/container/aarch64-hassio-observer) [![orgs/container/home-assistant/core/raspberrypi3-64-homeassistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22raspberrypi3-64-homeassistant%22)%5D.downloads&label=raspberrypi3-64-homeassistant)](https://github.com/home-assistant/core/pkgs/container/raspberrypi3-64-homeassistant) [![orgs/container/home-assistant/core/generic-x86-64-homeassistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22generic-x86-64-homeassistant%22)%5D.downloads&label=generic-x86-64-homeassistant)](https://github.com/home-assistant/core/pkgs/container/generic-x86-64-homeassistant) [![orgs/container/openfaas/faas/basic-auth](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22openfaas%22%20%26%26%20%40.repo%3D%3D%22faas%22%20%26%26%20%40.package%3D%3D%22basic-auth%22)%5D.downloads&label=basic-auth)](https://github.com/openfaas/faas/pkgs/container/basic-auth) [![orgs/container/home-assistant/supervisor/armv7-hassio-supervisor](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22supervisor%22%20%26%26%20%40.package%3D%3D%22armv7-hassio-supervisor%22)%5D.downloads&label=armv7-hassio-supervisor)](https://github.com/home-assistant/supervisor/pkgs/container/armv7-hassio-supervisor) [![orgs/container/home-assistant/plugin-dns/aarch64-hassio-dns](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-dns%22%20%26%26%20%40.package%3D%3D%22aarch64-hassio-dns%22)%5D.downloads&label=aarch64-hassio-dns)](https://github.com/home-assistant/plugin-dns/pkgs/container/aarch64-hassio-dns) [![orgs/container/home-assistant/plugin-audio/amd64-hassio-audio](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-audio%22%20%26%26%20%40.package%3D%3D%22amd64-hassio-audio%22)%5D.downloads&label=amd64-hassio-audio)](https://github.com/home-assistant/plugin-audio/pkgs/container/amd64-hassio-audio) [![orgs/container/coollabsio/coolify/coolify-helper](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22coollabsio%22%20%26%26%20%40.repo%3D%3D%22coolify%22%20%26%26%20%40.package%3D%3D%22coolify-helper%22)%5D.downloads&label=coolify-helper)](https://github.com/coollabsio/coolify/pkgs/container/coolify-helper) [![orgs/container/aquasecurity/trivy-checks/trivy-checks](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22trivy-checks%22%20%26%26%20%40.package%3D%3D%22trivy-checks%22)%5D.downloads&label=trivy-checks)](https://github.com/aquasecurity/trivy-checks/pkgs/container/trivy-checks) [![orgs/container/plankanban/planka/planka](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22plankanban%22%20%26%26%20%40.repo%3D%3D%22planka%22%20%26%26%20%40.package%3D%3D%22planka%22)%5D.downloads&label=planka)](https://github.com/plankanban/planka/pkgs/container/planka) [![orgs/container/home-assistant/plugin-audio/armv7-hassio-audio](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-audio%22%20%26%26%20%40.package%3D%3D%22armv7-hassio-audio%22)%5D.downloads&label=armv7-hassio-audio)](https://github.com/home-assistant/plugin-audio/pkgs/container/armv7-hassio-audio) [![orgs/container/aquasecurity/appshield/appshield](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22appshield%22%20%26%26%20%40.package%3D%3D%22appshield%22)%5D.downloads&label=appshield)](https://github.com/aquasecurity/appshield/pkgs/container/appshield) [![orgs/container/mealie-recipes/mealie/mealie](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22mealie-recipes%22%20%26%26%20%40.repo%3D%3D%22mealie%22%20%26%26%20%40.package%3D%3D%22mealie%22)%5D.downloads&label=mealie)](https://github.com/mealie-recipes/mealie/pkgs/container/mealie) [![orgs/container/home-assistant/plugin-dns/amd64-hassio-dns](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-dns%22%20%26%26%20%40.package%3D%3D%22amd64-hassio-dns%22)%5D.downloads&label=amd64-hassio-dns)](https://github.com/home-assistant/plugin-dns/pkgs/container/amd64-hassio-dns) [![orgs/container/home-assistant/plugin-cli/armv7-hassio-cli](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-cli%22%20%26%26%20%40.package%3D%3D%22armv7-hassio-cli%22)%5D.downloads&label=armv7-hassio-cli)](https://github.com/home-assistant/plugin-cli/pkgs/container/armv7-hassio-cli) [![orgs/container/containerd/containerd/busybox](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22containerd%22%20%26%26%20%40.repo%3D%3D%22containerd%22%20%26%26%20%40.package%3D%3D%22busybox%22)%5D.downloads&label=busybox)](https://github.com/containerd/containerd/pkgs/container/busybox) [![orgs/container/home-assistant/plugin-observer/amd64-hassio-observer](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-observer%22%20%26%26%20%40.package%3D%3D%22amd64-hassio-observer%22)%5D.downloads&label=amd64-hassio-observer)](https://github.com/home-assistant/plugin-observer/pkgs/container/amd64-hassio-observer) [![orgs/container/containrrr/watchtower/watchtower](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22containrrr%22%20%26%26%20%40.repo%3D%3D%22watchtower%22%20%26%26%20%40.package%3D%3D%22watchtower%22)%5D.downloads&label=watchtower)](https://github.com/containrrr/watchtower/pkgs/container/watchtower) [![orgs/container/home-assistant/plugin-multicast/aarch64-hassio-multicast](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-multicast%22%20%26%26%20%40.package%3D%3D%22aarch64-hassio-multicast%22)%5D.downloads&label=aarch64-hassio-multicast)](https://github.com/home-assistant/plugin-multicast/pkgs/container/aarch64-hassio-multicast) [![orgs/container/openfaas/faas-netes/faas-netes](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22openfaas%22%20%26%26%20%40.repo%3D%3D%22faas-netes%22%20%26%26%20%40.package%3D%3D%22faas-netes%22)%5D.downloads&label=faas-netes)](https://github.com/openfaas/faas-netes/pkgs/container/faas-netes) [![orgs/container/home-assistant/plugin-dns/armv7-hassio-dns](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-dns%22%20%26%26%20%40.package%3D%3D%22armv7-hassio-dns%22)%5D.downloads&label=armv7-hassio-dns)](https://github.com/home-assistant/plugin-dns/pkgs/container/armv7-hassio-dns) [![orgs/container/home-assistant/core/raspberrypi3-homeassistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22raspberrypi3-homeassistant%22)%5D.downloads&label=raspberrypi3-homeassistant)](https://github.com/home-assistant/core/pkgs/container/raspberrypi3-homeassistant) [![orgs/container/home-assistant/plugin-multicast/amd64-hassio-multicast](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-multicast%22%20%26%26%20%40.package%3D%3D%22amd64-hassio-multicast%22)%5D.downloads&label=amd64-hassio-multicast)](https://github.com/home-assistant/plugin-multicast/pkgs/container/amd64-hassio-multicast) [![orgs/container/mastodon/mastodon/mastodon](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22mastodon%22%20%26%26%20%40.repo%3D%3D%22mastodon%22%20%26%26%20%40.package%3D%3D%22mastodon%22)%5D.downloads&label=mastodon)](https://github.com/mastodon/mastodon/pkgs/container/mastodon) [![orgs/container/home-assistant/core/qemuarm-64-homeassistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22qemuarm-64-homeassistant%22)%5D.downloads&label=qemuarm-64-homeassistant)](https://github.com/home-assistant/core/pkgs/container/qemuarm-64-homeassistant) [![orgs/container/aquasecurity/trivy-test-images/trivy-test-images](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22trivy-test-images%22%20%26%26%20%40.package%3D%3D%22trivy-test-images%22)%5D.downloads&label=trivy-test-images)](https://github.com/aquasecurity/trivy-test-images/pkgs/container/trivy-test-images) [![orgs/container/containerd/containerd/volume-copy-up](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22containerd%22%20%26%26%20%40.repo%3D%3D%22containerd%22%20%26%26%20%40.package%3D%3D%22volume-copy-up%22)%5D.downloads&label=volume-copy-up)](https://github.com/containerd/containerd/pkgs/container/volume-copy-up) [![orgs/container/authelia/authelia/authelia](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22authelia%22%20%26%26%20%40.repo%3D%3D%22authelia%22%20%26%26%20%40.package%3D%3D%22authelia%22)%5D.downloads&label=authelia)](https://github.com/authelia/authelia/pkgs/container/authelia) [![orgs/container/openfaas/store-functions/nodeinfo](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22openfaas%22%20%26%26%20%40.repo%3D%3D%22store-functions%22%20%26%26%20%40.package%3D%3D%22nodeinfo%22)%5D.downloads&label=nodeinfo)](https://github.com/openfaas/store-functions/pkgs/container/nodeinfo) [![users/container/amacneil/dbmate/dbmate](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22amacneil%22%20%26%26%20%40.repo%3D%3D%22dbmate%22%20%26%26%20%40.package%3D%3D%22dbmate%22)%5D.downloads&label=dbmate)](https://github.com/amacneil/dbmate/pkgs/container/dbmate) [![orgs/container/aquasecurity/tfsec/tfsec](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22aquasecurity%22%20%26%26%20%40.repo%3D%3D%22tfsec%22%20%26%26%20%40.package%3D%3D%22tfsec%22)%5D.downloads&label=tfsec)](https://github.com/aquasecurity/tfsec/pkgs/container/tfsec) [![orgs/container/docker-mailserver/docker-mailserver/docker-mailserver](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22docker-mailserver%22%20%26%26%20%40.repo%3D%3D%22docker-mailserver%22%20%26%26%20%40.package%3D%3D%22docker-mailserver%22)%5D.downloads&label=docker-mailserver)](https://github.com/docker-mailserver/docker-mailserver/pkgs/container/docker-mailserver) [![orgs/container/home-assistant/core/odroid-n2-homeassistant](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22core%22%20%26%26%20%40.package%3D%3D%22odroid-n2-homeassistant%22)%5D.downloads&label=odroid-n2-homeassistant)](https://github.com/home-assistant/core/pkgs/container/odroid-n2-homeassistant) [![orgs/container/openfaas/of-watchdog/of-watchdog](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22openfaas%22%20%26%26%20%40.repo%3D%3D%22of-watchdog%22%20%26%26%20%40.package%3D%3D%22of-watchdog%22)%5D.downloads&label=of-watchdog)](https://github.com/openfaas/of-watchdog/pkgs/container/of-watchdog) [![orgs/container/home-assistant/plugin-observer/armv7-hassio-observer](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-observer%22%20%26%26%20%40.package%3D%3D%22armv7-hassio-observer%22)%5D.downloads&label=armv7-hassio-observer)](https://github.com/home-assistant/plugin-observer/pkgs/container/armv7-hassio-observer) [![orgs/container/openfaas/faas/gateway](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22openfaas%22%20%26%26%20%40.repo%3D%3D%22faas%22%20%26%26%20%40.package%3D%3D%22gateway%22)%5D.downloads&label=gateway)](https://github.com/openfaas/faas/pkgs/container/gateway) [![orgs/container/home-assistant/plugin-multicast/armv7-hassio-multicast](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22home-assistant%22%20%26%26%20%40.repo%3D%3D%22plugin-multicast%22%20%26%26%20%40.package%3D%3D%22armv7-hassio-multicast%22)%5D.downloads&label=armv7-hassio-multicast)](https://github.com/home-assistant/plugin-multicast/pkgs/container/armv7-hassio-multicast) [![users/container/br3ndonland/inboard/inboard](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22br3ndonland%22%20%26%26%20%40.repo%3D%3D%22inboard%22%20%26%26%20%40.package%3D%3D%22inboard%22)%5D.downloads&label=inboard)](https://github.com/br3ndonland/inboard/pkgs/container/inboard) [![orgs/container/openfaas/store-functions/figlet](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22openfaas%22%20%26%26%20%40.repo%3D%3D%22store-functions%22%20%26%26%20%40.package%3D%3D%22figlet%22)%5D.downloads&label=figlet)](https://github.com/openfaas/store-functions/pkgs/container/figlet) [![orgs/container/fission/fission/fission-bundle](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fipitio%2Fbadges%2Fmaster%2Findex.json&query=%24%5B%3F(%40.owner%3D%3D%22fission%22%20%26%26%20%40.repo%3D%3D%22fission%22%20%26%26%20%40.package%3D%3D%22fission-bundle%22)%5D.downloads&label=fission-bundle)](https://github.com/fission/fission/pkgs/container/fission-bundle)

### Endpoint

Refreshed daily, the endpoint is always up-to-date.

#### URL

```markdown
https://raw.githubusercontent.com/ipitio/badges/master/index.json
```

#### JSONPath

Just fill in the blanks to get the properties you want. Or get creative and forge your own path!

##### Package

You can query a package for any of the following properties like so:

```markdown
$[?(@.owner_type == "<TYPE>"
 && @.package_type == "<TYPE>"
 && @.owner == "<OWNER>"
 && @.repo == "<REPO>"
 && @.package == "<PACKAGE>"
)].<PROPERTY>
```

<details>

<summary>Properties</summary>

|       Property        |     Type     | Description                                        |
| :-------------------: | :----------: | -------------------------------------------------- |
|      `owner_id`       |    number    | The ID of the owner                                |
|     `owner_type`      |    string    | The type of owner (e.g. `users`)                   |
|    `package_type`     |    string    | The type of package (e.g. `container`)             |
|        `owner`        |    string    | The owner of the package                           |
|        `repo`         |    string    | The repository of the package                      |
|       `package`       |    string    | The package name                                   |
|        `date`         |    string    | The most recent date the package was refreshed     |
|        `size`         |    string    | Formatted size of the latest version               |
|      `versions`       |    string    | Formatted count of versions                        |
|       `tagged`        |    string    | Formatted count of tagged versions                 |
|      `downloads`      |    string    | Formatted count of all downloads                   |
|   `downloads_month`   |    string    | Formatted count of all downloads in the last month |
|   `downloads_week`    |    string    | Formatted count of all downloads in the last week  |
|    `downloads_day`    |    string    | Formatted count of all downloads in the last day   |
|      `raw_size`       |    number    | Size of the latest version, in bytes               |
|    `raw_versions`     |    number    | Count of versions                                  |
|     `raw_tagged`      |    number    | Count of tagged versions                           |
|    `raw_downloads`    |    number    | Count of all downloads                             |
| `raw_downloads_month` |    number    | Count of all downloads in the last month           |
| `raw_downloads_week`  |    number    | Count of all downloads in the last week            |
|  `raw_downloads_day`  |    number    | Count of all downloads in the last day             |
|       `version`       | object array | The versions of the package (see below)            |

</details>

##### Version

You can query a package version by replacing `<PROPERTY>` above with the following:

```markdown
version[<FILTER>].<PROPERTY>
```

For example, to get the `latest` tag, we can find the version with it and then exclude it from the list of tags:

```markdown
version[?(@.tags.indexOf("latest") != -1)]
.tags[?(@ != "latest")]
```

Or to get the number of downloads in the last month for a version by name:

```markdown
version[?(@.name=="<VERSION>")].downloads_month
```

<details>

<summary>Properties</summary>

|       Property        |     Type     | Description                                    |
| :-------------------: | :----------: | ---------------------------------------------- |
|         `id`          |    number    | The ID of the version                          |
|        `name`         |    string    | The version name                               |
|        `date`         |    string    | The most recent date the version was refreshed |
|       `newest`        |   boolean    | Whether the version is the latest              |
|        `size`         |    string    | Formatted size of the version                  |
|      `downloads`      |    string    | Formatted count of downloads                   |
|   `downloads_month`   |    string    | Formatted count of downloads in the last month |
|   `downloads_week`    |    string    | Formatted count of downloads in the last week  |
|    `downloads_day`    |    string    | Formatted number of downloads in the last day  |
|      `raw_size`       |    number    | Size of the version, in bytes                  |
|    `raw_downloads`    |    number    | Count of downloads                             |
| `raw_downloads_month` |    number    | Count of downloads in the last month           |
| `raw_downloads_week`  |    number    | Count of downloads in the last week            |
|  `raw_downloads_day`  |    number    | Count of downloads in the last day             |
|        `tags`         | string array | The tags of the version                        |

</details>

### Database

The properties are generated from the following tables:

#### Packages

The general stats for all packages.

<details>

<summary>Schema</summary>

|      Column       |  Type   | Description                                     |
| :---------------: | :-----: | ----------------------------------------------- |
|    `owner_id`     | INTEGER | The ID of the owner                             |
|   `owner_type`    |  TEXT   | The type of owner (e.g. `users`)                |
|  `package_type`   |  TEXT   | The type of package (e.g. `container`)          |
|      `owner`      |  TEXT   | The owner of the package                        |
|      `repo`       |  TEXT   | The repository of the package                   |
|     `package`     |  TEXT   | The package name                                |
|      `size`       | INTEGER | The size of the latest version                  |
|    `downloads`    | INTEGER | The total number of downloads                   |
| `downloads_month` | INTEGER | The total number of downloads in the last month |
| `downloads_week`  | INTEGER | The total number of downloads in the last week  |
|  `downloads_day`  | INTEGER | The total number of downloads in the last day   |
|      `date`       |  TEXT   | The most recent date the package was refreshed  |

</details>

#### Versions

The stats for all versions of each package.

<details>

<summary>Schema</summary>

|      Column       |  Type   | Description                                     |
| :---------------: | :-----: | ----------------------------------------------- |
|       `id`        | INTEGER | The ID of the version                           |
|      `name`       |  TEXT   | The version name                                |
|      `size`       | INTEGER | The size of the version                         |
|    `downloads`    | INTEGER | The total number of downloads                   |
| `downloads_month` | INTEGER | The total number of downloads in the last month |
| `downloads_week`  | INTEGER | The total number of downloads in the last week  |
|  `downloads_day`  | INTEGER | The total number of downloads in the last day   |
|      `date`       |  TEXT   | The most recent date the version was refreshed  |
|      `tags`       |  TEXT   | The tags of the version (csv)                   |

</details>

### TODO

Feel free to help with any of these:

* [ ] Make a GitHub Pages badge/JSONPath maker
* [ ] Get sizes for package types other than `container`
* [ ] Any other improvements or ideas you have -- see this [discussion](https://github.com/ipitio/badges/discussions/9)
