#!/bin/bash
#################################################
# Filename: 00_virsh_start_centos7_total.sh
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
sleep 2s

# virsh undefine
# ex: virsh undefine centos7_61
# for((i = 61; i <= 70; ++i))
# do
#     virsh undefine centos7_$i
#     echo "virsh undefine centos7_$i ok!"
#     echo ""
#     sleep 0.1
# done
# sleep 2s

# rm
# rm -f ../img_files/centos7_61.qcow2
# sleep 2s

# cp
# ex: cp -i centos7_61.qcow2 centos7_62.qcow2
# for((i = 62; i <= 70; ++i))
# do 
#     echo "create file: centos7_$i.qcow2 ..."
#     cp -i centos7_61.qcow2 centos7_$i.qcow2
#     echo "create file: centos7_$i.qcow2 ok!"
#     echo ""
#     sleep 1
# done
# sleep 2s

# qemu-img create
# ex: qemu-img create -f qcow2 ../img_files/centos7_61.qcow2 5G
# for((i = 61; i <= 70; ++i))
# do
#     qemu-img create -f qcow2 ../img_files/centos7_$i.qcow2 5G
#     echo "create centos7_$i.qcow2 ok!"
#     echo ""
#     sleep 0.1
# done
# sleep 2s

# virsh define
# ex: virsh define 02_virsh_start_centos7_61.xml
# for((i = 61; i <= 70; ++i))
# do
#     virsh define 02_virsh_start_centos7_$i.xml
#     echo "virsh define centos7_$i ok!"
#     echo ""
#     sleep 0.1
# done
# sleep 2s

sleep 2s
# virsh start
# ex: virsh start centos7_61
for((i = 61; i <= 66; ++i))
do
    virsh start centos7_$i
    echo "virsh shutdown centos7_$i ok!"
    echo ""
    sleep 0.1
done

