#!/bin/sh
set -xeuo pipefail
tcpdump -n -e -ttt -r /var/log/pflog
exit 0
