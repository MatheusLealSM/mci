#!/usr/bin/env bash

##
# Service management library
# MCI Framework
##

service_exists() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl list-unit-files --type=service \
        | awk '{print $1}' \
        | grep -qx "${service}.service"
}

service_is_active() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl is-active --quiet "$service"
}

service_start() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl start "$service"
}

service_stop() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl stop "$service"
}

service_restart() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl restart "$service"
}

service_reload() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl reload "$service"
}

service_enable() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl enable "$service"
}

service_disable() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl disable "$service"
}

service_status() {
    local service="$1"

    [[ -z "$service" ]] && return 1

    systemctl status "$service"
}