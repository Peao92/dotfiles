#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OLD_CONFIG="~/.old-config/$(date --iso-8601=seconds)"

# Create backup of old configs
mkdir -p ${OLD_CONFIG}

function createSymlink () {
    FILE=$1
    if [[ -z "${FILE}" ]] ; then
        echo "No argument provided"
        exit 1
    fi

    if [[ -f "${FILE}" ]] ; then
        echo "Provided argument is not a file"
        exit 1
    fi

    FILE_TARGET="~/$(basename ${FILE})"
    if [[ -f ${FILE_TARGET} ]] ; then
       OLD_CONFIG_TARGET="${OLD_CONFIG}/$(basename ${FILE})"
        echo "The target ${FILE_TARGET} already exists."
        echo "Moving old file to ${OLD_CONFIG_TARGET}"
        mv  ${FILE_TARGET} ${OLD_CONFIG_TARGET}
    fi

    echo "Creating symlink ${FILE} -> ${FILE_TARGET}"
    ln -s ${FILE} ${FILE_TARGET}
}

for f in ${BASEDIR}/../* ; do
    createSymlink ${f}
done
