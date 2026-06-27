#!/usr/bin/env bash

###############################################
# MCI Framework
# Logger Library
###############################################

readonly LOG_DIR="logs"
readonly LOG_FILE="${LOG_DIR}/mci.log"

mkdir -p "${LOG_DIR}"

timestamp() {
    date "+%Y-%m-%d %H:%M:%S"
}

_log() {

    local level="$1"
    local color="$2"

    shift 2

    local message="$*"

    local now
    now=$(timestamp)

    printf "%b[%s] %-8s %s%b\n" \
        "$color" \
        "$now" \
        "[$level]" \
        "$message" \
        "$NC"

    printf "[%s] %-8s %s\n" \
        "$now" \
        "[$level]" \
        "$message" \
        >> "$LOG_FILE"

}

log_info() {
    _log INFO "$BLUE" "$@"
}

log_success() {
    _log OK "$GREEN" "$@"
}

log_warn() {
    _log WARN "$YELLOW" "$@"
}

log_error() {
    _log ERROR "$RED" "$@"
}

log_debug() {

    [[ "${DEBUG:-false}" == "true" ]] || return 0

    _log DEBUG "$CYAN" "$@"

}
logger_init() {

    mkdir -p "${LOG_DIR}"

    touch "${LOG_FILE}"

}