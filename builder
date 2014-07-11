#!/bin/bash
set -e

bp_dir=$(cd $(dirname $0); pwd)
export PATH=$bp_dir/scripts:$bp_dir/vendor:$PATH

ln -sf $bp_dir/vendor/jq-$(uname -s) $bp_dir/vendor/jq

get-node
run-tasks
