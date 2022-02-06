#!/usr/bin/env bash
dir="$(dirname "$0")"/..
source $dir/_virtualenv/bin/activate || exit
shopt -s nullglob
export PYTHONPATH=$PYTHONPATH:$PWD:$dir$(for d in $dir/lib/*; do printf ":$d" ; done)
export JUPYTER_CONFIG_DIR=$PWD/bin
