#!/bin/bash -e

add_path() {
    export PATH=${PATH//":$1:"/:}
    export PATH=${PATH/%":$1"/}
    export PATH=${PATH/#"$1:"/}
    export PATH="$1${PATH:+":$PATH"}"
}

add_ld_path() {
    export LD_LIBRARY_PATH=${LD_LIBRARY_PATH//":$1:"/:}
    export LD_LIBRARY_PATH=${LD_LIBRARY_PATH/%":$1"/}
    export LD_LIBRARY_PATH=${LD_LIBRARY_PATH/#"$1:"/}
    export LD_LIBRARY_PATH="$1${LD_LIBRARY_PATH:+":$LD_LIBRARY_PATH"}"
}

add_PYTHONPATH() {
    export PYTHONPATH=${PYTHONPATH//":$1:"/:}
    export PYTHONPATH=${PYTHONPATH/%":$1"/}
    export PYTHONPATH=${PYTHONPATH/#"$1:"/}
    export PYTHONPATH="$1${PYTHONPATH:+":$PYTHONPATH"}"
}

scriptDir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

install_dir=$scriptDir/install

add_path $install_dir/ws/bin
add_ld_path $install_dir/ws/lib
add_PYTHONPATH $install_dir/ws/python

export PULP_CONFIGS_PATH=$install_dir/ws/configs
