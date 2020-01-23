#!/bin/sh

if [[ $# -ne 2 ]]; then
    echo "Usage: ./open.sh <chal-#> <flag>"
    echo ""
    echo "- Example: ./open.sh 999 \"FLAG-supersecretflag\""
    echo "- Note: use quotes around the flag in case it contains special characters"
    exit 1
fi

dir=$(dirname $(find -name "vcapra1-writeup-${1}.zip"))
pass=$(echo -n "$2" | md5sum | cut -z -b-32 | sha256sum | cut -b-64)

cd "$dir" && unzip -o -P "${pass}" "vcapra1-writeup-${1}.zip" && echo "Writeup for challenge $1 extracted into $(basename $dir)." || echo "Something went wrong, probably an incorrect flag or that challenge doesn't have a writeup yet."
