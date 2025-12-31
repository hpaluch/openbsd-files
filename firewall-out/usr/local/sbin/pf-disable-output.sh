#!/bin/sh
# disable all output connections flushing anchor "dyn-wired"
set -xeuo pipefail
pfctl -a dyn-wired -Fa
pfctl -a dyn-wired -s rules
exit 0
