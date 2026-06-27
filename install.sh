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

source core/loader.sh
source core/bootstrap.sh

bootstrap