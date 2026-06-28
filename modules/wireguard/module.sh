#!/usr/bin/env bash

wireguard_module() {

    clear

    echo
    echo "=================================="
    echo " WireGuard + wg-easy"
    echo "=================================="
    echo

    source "${MCI_ROOT}/modules/wireguard/install.sh"

    wireguard_install

    read -rp "Pressione ENTER para voltar..."
}