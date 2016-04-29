#!/bin/bash
#################################################
# Filename: 02_virsh_start_win2003_61.sh
# Author:   jerry_0824
# Email:    63935127##qq.com
# Date:     2016-04-28
# Version:  v1.0.2
#################################################

WORK_PATH=${HOME}/work
VM_IMG_FILES_PATH=${WORK_PATH}/016_qemu_virsh_kvm_demo/00_img_files
VM_IMG_FILES_WIN2003_PATH=${VM_IMG_FILES_PATH}/02_win2003

# virsh shutdown
virsh shutdown win2003_61 

sleep 3s

# virsh undefine
virsh undefine win2003_61

# rm
# rm -f ../img_files/win2003_61.qcow2

# qemu-img create
# qemu-img create -f qcow2 ${VM_IMG_FILES_WIN2003_PATH}/win2003_61.qcow2 10G

# virsh define
virsh define 02_virsh_start_win2003_61.xml

sleep 3s

virsh start win2003_61

