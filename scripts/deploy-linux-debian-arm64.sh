#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

echo "========================================================================================="
echo "=============Installing Osquery debian arm64=============="
wget -q https://pkg.osquery.io/deb/osquery_4.5.1_1.linux.arm64.deb
dpkg -i osquery_4.5.1_1.linux.arm64.deb
osqueryctl start osqueryd
osqueryctl status osqueryd
echo "========================================================================================="
