#!/bin/sh
set -euo pipefail
echo "Enabling output SSH connections (alow for CVS)..."
set -x
pfctl -a dyn-wired -s rules
echo 'pass out proto tcp from any to any port ssh' | pfctl -a dyn-wired -f -
pfctl -a dyn-wired -s rules
exit 0
