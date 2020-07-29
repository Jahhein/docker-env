#!/bin/bash
# Installs useful packages

install_packages() {
  return 1
}

exit_not_finished() {
  echo "Install-packages.sh not finished" && exit 2
}

install_packages || exit_not_finished

exit 0
