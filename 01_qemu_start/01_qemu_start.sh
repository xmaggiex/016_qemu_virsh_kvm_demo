#!/bin/bash
#################################################
# Filename: 01_qemu_start.sh
# Author:   jerry_0824
# Email:    63935127##qq.com
# Date:     2016-04-23
# Version:  v1.0.1
#################################################

$ sudo apt-get install qemu-utils
$ qemu-img create -f qcow2 centos7_71.img 5G
$ qemu-img create -f qcow2 centos7_71.qcow2 5G

# After install centos7 successfully
$ sudo apt-get install qemu-system
$ qemu-system-x86_64 ./img_files/centos7_71.img -m 512 -enable-kvm
$ qemu-system-x86_64 ./img_files/centos7_71.img -m 256 -enable-kvm
