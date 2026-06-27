#!/usr/bin/env bash

#############################################################
#
# Projeto.......: MCI Framework
# Biblioteca....: Validation
# Arquivo.......: validation.sh
# Autor.........: Matheus Leal
# Licença.......: MIT
#
#############################################################

validation_init() {

    log_info "Validando ambiente..."

    validate_root
    validate_os
    validate_internet

}
validate_root() {

    if [[ $EUID -ne 0 ]]; then

        log_error "Execute o MCI como root."

        exit 1

    fi

    log_success "Privilégios de root confirmados."

}
validate_os() {

    if ! grep -qi "debian" /etc/os-release; then

        log_error "Sistema operacional não suportado."

        exit 1

    fi

    log_success "Debian compatível."

}

validate_internet() {

    if ping -c1 1.1.1.1 >/dev/null 2>&1; then

        log_success "Conexão com a Internet OK."

        return

    fi

    log_error "Sem conexão com a Internet."

    exit 1

}