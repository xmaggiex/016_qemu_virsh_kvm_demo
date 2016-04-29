#!/bin/bash
#################################################
# Filename: 02_virsh_start_centos7_61.sh
# Author:   jerry_0824
# Email:    63935127##qq.com
# Date:     2016-04-23
# Version:  v1.0.2
#################################################

# shutdown
virsh shutdown centos7_61

# virsh undefine
# virsh undefine centos7_61

# rm
# rm -f ../img_files/centos7_61.qcow2

# qemu-img create
# qemu-img create -f qcow2 ../img_files/centos7_61.qcow2 5G

# virsh define
virsh define 02_virsh_start_centos7_61.xml

sleep 3s

virsh start centos7_61

