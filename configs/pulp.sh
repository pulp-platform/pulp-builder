scriptDir="$(dirname "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"

export PULP_SDK_HOME=$scriptDir

source $PULP_SDK_HOME/pulp-runtime/configs/pulp.sh
source $PULP_SDK_HOME/configs/common.sh

export PULP_CURRENT_CONFIG=pulp@config_file=chips/pulp/pulp.json
