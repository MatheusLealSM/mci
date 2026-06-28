#!/usr/bin/env bash

source "${MCI_ROOT}/modules/wireguard/docker.sh"

wireguard_install() {

    install_docker

    echo
    log_success "Primeira etapa concluída."
    echo

}