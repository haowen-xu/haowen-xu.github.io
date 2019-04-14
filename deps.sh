#!/bin/bash

function fetch_plugin() {
    NAME="$1"
    URL="$2"
    pushd .
    cd themes/next/source/lib
    echo "Fetching ${NAME} ..."
    if [ ! -d "${NAME}" ]; then
        ( git clone "${URL}" "${NAME}" ) || exit -1;
    else
        ( cd "${NAME}" && git pull ) || exit -1;
    fi
    popd
}

fetch_plugin fancybox https://github.com/theme-next/theme-next-fancybox3
fetch_plugin pace https://github.com/theme-next/theme-next-pace
fetch_plugin jquery_lazyload https://github.com/theme-next/theme-next-jquery-lazyload
