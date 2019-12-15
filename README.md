# PULP builder


## About

This module is a build process for the PULP runtime.

### Runtime build

You need to first install the Linux dependencies (see [below](#dependencies)).

Get the submodules:

    $ git submodule update --init

Choose the configuration for which you want to compile the runtime, for example:

    $ source configs/pulp.sh

Then execute this script:

    $ ./scripts/build-runtime

Then you can get one of the pulp example, compile and run it.


## Linux dependencies

Here are the required system dependencies for building the SDK and its dependencies.

### Ubuntu 16.04

Starting from a fresh Ubuntu 16.04 distribution, here are the commands to be executed to get all required dependencies:

    $ sudo apt install git python3-pip gawk texinfo libgmp-dev libmpfr-dev libmpc-dev swig3.0 libjpeg-dev lsb-core doxygen python-sphinx sox graphicsmagick-libmagick-dev-compat libsdl2-dev libswitch-perl libftdi1-dev cmake scons libsndfile1-dev
    $ sudo pip3 install twisted prettytable pyelftools openpyxl xlsxwriter pyyaml numpy configparser pyvcd
    $ sudo pip2 install configparser

### Scientific Linux 7.4

Starting from a fresh Scientific Linux 7.4 distribution, here are the commands to be executed to get all required dependencies:

    $ sudo yum install git python34-pip python34-devel gawk texinfo gmp-devel mpfr-devel libmpc-devel swig libjpeg-turbo-devel redhat-lsb-core doxygen python-sphinx sox GraphicsMagick-devel ImageMagick-devel SDL2-devel perl-Switch libftdi-devel cmake scons
    $ sudo pip3 install twisted prettytable pyelftools openpyxl xlsxwriter pyyaml numpy configparser pyvcd
    $ sudo pip2 install configparser

## Dependencies

### Build

Have a look at the dependencies documentation to see how to build them.

You can have a look [here](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain.git) for the toolchain.

### Setup

The toolchain must be built separately and the following environment variable should set:

    $ export PATH=<path to the folder containing the bin folder of the toolchain>/bin:$PATH

RTL platforms should also be built separately (see the platform documentation for that) and the following
environment variable must point to the folder where the platform was installed (this example is for pulpissimo):

    $ export VSIM_PATH=<pulpissimo root folder>/sim

