#!/bin/sh
set -xeuo pipefail
pfctl -a dyn-wired -s rules
exit 0
