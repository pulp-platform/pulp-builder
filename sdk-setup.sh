#!/bin/bash -e

source setup.sh

scriptDir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

install_dir=$scriptDir/install

export PULP_SDK_HOME=$scriptDir
export PULP_SDK_INSTALL=$scriptDir/install
export PULP_SDK_WS_INSTALL=$scriptDir/install/ws
