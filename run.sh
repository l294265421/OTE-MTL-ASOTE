#!/usr/bin/env bash
start_time=`date +%Y%m%d%H%M%S`
echo "start ${start_time}--------------------------------------------------"

gpu_card=$1
shift

export CUDA_VISIBLE_DEVICES=${gpu_card}

#export LD_LIBRARY_PATH="/usr/local/cuda-10.0/lib64:$LD_LIBRARY_PATH"
#export PATH="/usr/local/cuda-10.0/bin:$PATH"

python=python

export LANG="zh_CN.UTF-8"

CUR_DIR=`pwd`

ROOT=${CUR_DIR}

export PYTHONPATH=${ROOT}:${PYTHONPATH}

${python} $@

end_time=`date +%Y%m%d%H%M%S`
echo ${end_time}
