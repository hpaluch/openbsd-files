#!/bin/sh
set -xeuo pipefail
tcpdump -n -e -ttt -i pflog0
exit 0
