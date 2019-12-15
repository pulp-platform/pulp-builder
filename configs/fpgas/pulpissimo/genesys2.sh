scriptDir="$(dirname "$(dirname "$(dirname "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")")")"

export PULP_SDK_HOME=$scriptDir

source $PULP_SDK_HOME/pulp-runtime/configs/pulpissimo.sh
source $PULP_SDK_HOME/configs/common.sh

export PULP_CURRENT_CONFIG=pulpissimo@config_file=fpgas/pulpissimo/genesys2.json

export PULPRUN_PLATFORM=fpga

export io=uart