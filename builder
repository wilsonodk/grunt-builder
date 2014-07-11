#!/bin/bash
set -e

app_dir=$1
bp_dir=$(cd $(dirname $0); pwd)
export PATH=$bp_dir/scripts:$bp_dir/vendor:$PATH

ln -sf $bp_dir/vendor/jq-$(uname -s) $bp_dir/vendor/jq

get-node $app_dir
run-tasks $app_dir
