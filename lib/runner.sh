#!/usr/bin/env bash

run() {

    local description="$1"

    shift

    local function="$1"

    shift

    log_info "$description"

    local start
    start=$(date +%s)

    if "$function" "$@"; then

        local end
        end=$(date +%s)

        local elapsed=$((end-start))

        log_success "${description} (${elapsed}s)"

        return 0

    fi

    log_error "${description}"

    return 1

}