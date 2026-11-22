#!/usr/bin/env bash
set -euo pipefail

# This package keeps its .hnl sources under handl-packages/ (the
# handl-packages/<mod>/<mod>.hnl layout), not src/ — point the gate there.
export SRC_DIR="${SRC_DIR:-handl-packages}"

exec ./scripts/hnl-gate.sh "$@"
