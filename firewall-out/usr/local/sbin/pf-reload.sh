#!/bin/sh
set -xeuo pipefail
pfctl -n -f /etc/pf.conf
pfctl -f /etc/pf.conf
pfctl -a dyn-wired -Fa
pfctl -a dyn-wired -s rules
pfctl -s all
exit 0
