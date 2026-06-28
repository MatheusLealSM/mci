#!/usr/bin/env bash

set -Eeuo pipefail

DEBUG=false

for arg in "$@"; do
    case "$arg" in
        --debug)
            DEBUG=true
            ;;
    esac
done

export MCI_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "${MCI_ROOT}/core/loader.sh"
source "${MCI_ROOT}/core/bootstrap.sh"

bootstrap