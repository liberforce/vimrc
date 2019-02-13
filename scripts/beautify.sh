#!/bin/bash

ERR_BAD_ARGS=1
ERR_VIM_NOT_FOUND=2

tmpfile=$(mktemp --tmpdir "beautify.XXX")

usage()
{
    cat << EOF
Usage: $(basename $0) FILE [FILES]

Processes one (or more) files to remove blank lines and trailing spaces.
EOF
}

beautify()
{
    cat << EOF > "$tmpfile"
:set hidden
:argdo g/^\s*$/d | %s/\s\+$//e
:wall
:quit
EOF

    vim -s "$tmpfile" -es "$@"
}

main()
{
    if [ $# -lt 1 ]; then
        usage
        exit $ERR_BAD_ARGS
    fi

    VIM=$(which vim)
    if [ ! -f "$VIM" ]; then
        echo "This script requires vim, please install it."
        exit $ERR_VIM_NOT_FOUND
    fi

    beautify "$@"
}

main "$@"
