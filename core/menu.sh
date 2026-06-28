#!/usr/bin/env bash

main_menu() {

    while true; do

        clear
        show_banner

        echo
        echo "==============================="
        echo "      MCI - Main Menu"
        echo "==============================="
        echo
        echo "1) WireGuard + wg-easy"
        echo "0) Sair"
        echo

        read -rp "Escolha: " option

        case "$option" in
            1)
                source "${MCI_ROOT}/modules/wireguard/module.sh"
                wireguard_module
                ;;
            0)
                exit 0
                ;;
            *)
                echo "Opção inválida."
                sleep 1
                ;;
        esac

    done
}