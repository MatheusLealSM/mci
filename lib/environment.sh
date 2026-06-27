#!/usr/bin/env bash

#############################################################
#
# Projeto.......: MCI Framework
# Biblioteca....: Environment
# Arquivo.......: environment.sh
# Autor.........: Matheus Leal
# Licença.......: MIT
#
#############################################################

readonly ENVIRONMENT_OS="$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')"
readonly ENVIRONMENT_KERNEL="$(uname -r)"
readonly ENVIRONMENT_ARCH="$(uname -m)"
readonly ENVIRONMENT_HOSTNAME="$(hostname)"
readonly ENVIRONMENT_CPU_CORES="$(nproc)"
readonly ENVIRONMENT_MEMORY_MB="$(free -m | awk '/^Mem:/ {print $2}')"
readonly ENVIRONMENT_SWAP_MB="$(free -m | awk '/^Swap:/ {print $2}')"
readonly ENVIRONMENT_DISK_ROOT="$(df -h / | awk 'NR==2 {print $2}')"

environment_init() {

    log_info "Detectando ambiente..."

    log_success "Sistema Operacional : ${ENVIRONMENT_OS}"

    log_success "Kernel             : ${ENVIRONMENT_KERNEL}"

    log_success "Arquitetura        : ${ENVIRONMENT_ARCH}"

    log_success "Hostname           : ${ENVIRONMENT_HOSTNAME}"

    log_success "CPU                : ${ENVIRONMENT_CPU_CORES} Core(s)"

    log_success "Memória            : ${ENVIRONMENT_MEMORY_MB} MB"

    log_success "Swap               : ${ENVIRONMENT_SWAP_MB} MB"

    log_success "Disco              : ${ENVIRONMENT_DISK_ROOT}"

}