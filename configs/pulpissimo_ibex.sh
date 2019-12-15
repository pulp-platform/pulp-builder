scriptDir="$(dirname "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")")"

export PULP_SDK_HOME=$scriptDir

source $PULP_SDK_HOME/pulp-runtime/configs/pulpissimo.sh
source $PULP_SDK_HOME/configs/common.sh

export PULP_CURRENT_CONFIG=pulpissimo_ibex@config_file=chips/pulpissimo/pulpissimo_ibex.json
