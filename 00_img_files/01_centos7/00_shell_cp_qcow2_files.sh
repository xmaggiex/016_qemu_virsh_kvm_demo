#!/bin/bash
#################################################
# Filename: 00_shell_cp_qcow2_files.sh
# Author:   jerry_0824
# Email:    63935127##qq.com
# Date:     2016-04-23
# Version:  v1.0.1
#################################################

for((i = 62; i <= 70; ++i))
do
    echo "create file: centos7_$i.qcow2 ..."
    cp -i centos7_61.qcow2 centos7_$i.qcow2
    echo "create file: centos7_$i.qcow2 ok!"
    echo ""
    sleep 1
done
