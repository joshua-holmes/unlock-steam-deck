#!/bin/bash
set -e

## Init
append_keyserver() {
    echo -e "\n${line}\n" >> ${dir}
}
check_keyserver() {
    local keyserver="hkps://keyserver.ubuntu.com"
    local line="keyserver ${keyserver}"
    local dir="/etc/pacman.d/gnupg/gpg.conf"

    if grep -Fxq "${line}" ${dir}
    then
        echo "Keyserver '${keyserver}' found, skipping append"
    else
        echo "Keyserver '${keyserver}' not found, appending value to ${dir}"
        append_keyserver
        echo -e "\nFinished appending\n"
    fi
}
install_keyring() {
    echo "Installing keyring"
    local url="https://archlinux.org/packages/core/any/archlinux-keyring/download"
    local file="./archlinux-keyring.pkg.tar.zst"
    curl ${url} --output ${file} --location --silent
    pacman --noconfirm --needed  --quiet --upgrade ${file}
    rm --force ${file}
    echo -e "\nKeyring installed\n"
}

## Start program
steamos-readonly disable
check_keyserver
pacman-key --init
pacman-key --populate
pacman-key --refresh-keys
# install_keyring # may not be required because base-devel package includes keyring package
pacman --noconfirm --quiet --needed --sync base-devel
echo -e "\nSteamdeck unlock was successful"
