#!/bin/bash

RED='\033[1;31m'
YELLOW='\033[1;33m'
PINK='\033[1;35m'
RESET='\033[0m'

printf "%b%s%b\n" "$PINK" "tex-clean" "$RESET"
inputs=("$@")

if [[ ${#inputs[@]} == 0 ]]; then
    inputs=("$(pwd)")
fi

for input in "${inputs[@]}"; do

    if [ -d "$input" ]; then
        dir="$(realpath "$input")"
    elif [ -f "$input" ]; then
        dir="$(realpath "$(dirname "$input")")"
    else
        printf "%b%s %bis not a file or directory%b\n" \
            "$YELLOW" "$input" "$RED" "$RESET"
        exit 1
    fi

    rm -rfv \
        "$dir"/auto/ \
        "$dir"/*.aux \
        "$dir"/*-blx.bib \
        "$dir"/*.bbl \
        "$dir"/*.bcf \
        "$dir"/*.blg \
        "$dir"/*.dvi \
        "$dir"/*.fdb_latexmk \
        "$dir"/*.fls \
        "$dir"/*.glg \
        "$dir"/*.glo \
        "$dir"/*.gls \
        "$dir"/*.ist \
        "$dir"/*.lof \
        "$dir"/*.log \
        "$dir"/*.lot \
        "$dir"/*.nav \
        "$dir"/*.out \
        "$dir"/*.pytxcode \
        "$dir"/*.run.xml \
        "$dir"/*.sha256 \
        "$dir"/*.snm \
        "$dir"/*.synctex.gz \
        "$dir"/*.thm \
        "$dir"/*.toc \
        "$dir"/*.xdv \

done