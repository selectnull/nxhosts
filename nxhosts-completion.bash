#!/usr/bin/env bash

# auto complete script for nxhosts

_complete_nxhosts() {
    local cur prev opts base
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    subcommand="${COMP_WORDS[1]}"
    opts="list test reload enable disable view edit"

    case "${subcommand}" in
        list|test|reload)
            return 0
            ;;
        enable|disable|view|edit)
            COMPREPLY=$(compgen -W "$(ls /etc/nginx/sites-available)" "$cur")
            ;;
        *)
            COMPREPLY=($(compgen -W "${opts}" "${COMP_WORDS[1]}"))
    esac
}

complete -F _complete_nxhosts nxhosts
