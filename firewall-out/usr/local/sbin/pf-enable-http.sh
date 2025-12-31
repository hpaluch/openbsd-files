#!/bin/sh
set -euo pipefail
echo "Enabling output http(s) connections..."
set -x
pfctl -a dyn-wired -s rules
echo 'pass out proto tcp from any to any port {http,https}' | pfctl -a dyn-wired -f -
pfctl -a dyn-wired -s rules
exit 0
