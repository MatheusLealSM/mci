package_update() {

    log_info "Atualizando índice de pacotes..."

    if apt-get update -qq; then
        log_success "Índice atualizado."
        return 0
    fi

    log_error "Falha ao atualizar índice de pacotes."
    return 1
}
package_upgrade() {

    log_info "Atualizando pacotes instalados..."

    if DEBIAN_FRONTEND=noninteractive apt-get upgrade -y; then
        log_success "Pacotes atualizados."
        return 0
    fi

    log_error "Falha ao atualizar pacotes."
    return 1
}
