#!/bin/sh

# Tested with:
#   - ArchLinux (x86_64)
#
# "python-virtualenv" is Python3, but "python2-virtualenv" provides
# only "virtualenv2" binary, not "virtualenv" necessary in
# ./bootstrap/dev/_common_venv.sh

deps="
  git
  python2
  python-virtualenv
  gcc
  dialog
  augeas
  openssl
  libffi
  ca-certificates
  pkg-config
"

missing=$(pacman -T $deps)

if [ "$missing" ]; then
  pacman -Sy --needed $missing
fi
