#!/bin/bash

function npm_install() {
    log_info "Running NPM install..." && log_info
    npmplugin_test_command "npm"
    sudo npm install "${pdcyml_npm_install[*]}"
    log_info "NPM Install executed with success!" && log_info
}

function npmplugin_confirm() {
    [[ "$pdcyml_npm_install" != "" ]] && log_info "# NPM Install: ${pdcyml_npm_install[*]}" && log_info
}

function npmplugin_test_command() {
    local command=$1

    hash "$command" 2>/dev/null ||
    (
        log_info "Command ${command} not found. Abort installation? [y/N]" && read -r option

        if [[ $option == 'Y' ]] || [[ $option == 'y' ]] || [[ $option != '' ]]; then
            log_info "Canceled by user"
            exit 1
        fi
    )
}
