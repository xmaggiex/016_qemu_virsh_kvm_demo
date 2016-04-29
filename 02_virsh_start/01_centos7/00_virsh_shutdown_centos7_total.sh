#!/bin/bash
#################################################
# Filename: 00_virsh_shutdown_centos7_total.sh
# Author:   jerry_0824
# Email:    63935127##qq.com
# Date:     2016-04-23
# Version:  v1.0.2
#################################################

# shutdown
# ex: virsh shutdown centos7_61
for((i = 61; i <= 70; ++i))
do
    virsh shutdown centos7_$i
    echo "virsh shutdown centos7_$i ok!"
    echo ""
    sleep 0.1
done
sleep 1s

