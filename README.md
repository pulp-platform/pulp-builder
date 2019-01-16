# PULP SDK builder


## About

This module is a simplified build process for the PULP SDK.

## Linux dependencies

Here are the required system dependencies for building the SDK and its dependencies.

### Ubuntu 16.04

Starting from a fresh Ubuntu 16.04 distribution, here are the commands to be executed to get all required dependencies:

    $ sudo apt install git python3-pip gawk texinfo libgmp-dev libmpfr-dev libmpc-dev swig3.0 libjpeg-dev lsb-core doxygen python-sphinx sox graphicsmagick-libmagick-dev-compat libsdl2-dev libswitch-perl libftdi1-dev cmake scons
    $ sudo pip3 install twisted prettytable pyelftools openpyxl xlsxwriter pyyaml numpy 

### Scientific Linux 7.4

Starting from a fresh Scientific Linux 7.4 distribution, here are the commands to be executed to get all required dependencies:

    $ sudo yum install git python34-pip python34-devel gawk texinfo gmp-devel mpfr-devel libmpc-devel swig libjpeg-turbo-devel redhat-lsb-core doxygen python-sphinx sox GraphicsMagick-devel ImageMagick-devel SDL2-devel perl-Switch libftdi-devel cmake scons
    $ sudo pip3 install twisted prettytable pyelftools openpyxl xlsxwriter pyyaml numpy 

## Dependencies

### Build

Have a look at the dependencies documentation to see how to build them.

You can have a look [here](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain.git) for the toolchain.

### Setup

All the dependencies required to build the SDK must be setup through environment variables.

The toolchain must be built separately and the following environment variable should 
point to it:

    $ export PULP_RISCV_GCC_TOOLCHAIN=<path to the folder containing the bin folder of the toolchain>

RTL platforms should also be built separately (see the platform documentation for that) and the following
environment variable must point to the folder where the platform was installed (this example is for pulpissimo):

    $ export VSIM_PATH=<pulpissimo root folder>/sim

