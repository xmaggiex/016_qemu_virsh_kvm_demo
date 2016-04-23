#!/bin/bash
#################################################
# Filename: shell_calc_cpu_usage_demo.sh
# Author:   jerry_0824
# Email:    63935127##qq.com
# Date:     2016-04-23
# Version:  v1.0.2
#################################################

#function func_calc_cpu_usage
func_calc_cpu_usage()
{
    # get cpu info old
    cpu_all_info_old=$(cat /proc/stat | grep "cpu" | head -n 1 | awk '{print $2" "$3" "$4" "$5" "$6" "$7" "$8}')
    cpu_idle_jiffies_old=$(echo $cpu_all_info_old | awk '{print $4}')
    cpu_total_jiffies_old=$(echo $cpu_all_info_old | awk '{print $1+$2+$3+$4+$5+$6+$7}')

    # sleep
    sleep 0.1

    # get cpu info new
    cpu_all_info_new=$(cat /proc/stat | grep "cpu" | head -n 1 | awk '{print $2" "$3" "$4" "$5" "$6" "$7" "$8}')
    cpu_idle_jiffies_new=$(echo $cpu_all_info_new | awk '{print $4}')
    cpu_total_jiffies_new=$(echo $cpu_all_info_new | awk '{print $1+$2+$3+$4+$5+$6+$7}')

    # caculate
    cpu_idle_jiffies_diff=`expr $cpu_idle_jiffies_new - $cpu_idle_jiffies_old`
    cpu_total_jiffies_diff=`expr $cpu_total_jiffies_new - $cpu_total_jiffies_old`
    cpu_idle_rate=`expr $cpu_idle_jiffies_diff/$cpu_total_jiffies_diff*100 | bc -l`
    cpu_usage_rate=`expr 100-$cpu_idle_rate | bc -l`
    cpu_usage_rate_disp=`expr "scale=3;$cpu_usage_rate/1" | bc -l`

    # format cpu usage rate
    cpu_usage_rate_disp_format=`printf "%.3f" $cpu_usage_rate_disp`

    # echo cpu usage rate
    echo $cpu_usage_rate_disp_format
}

# loop
while true
do
    func_calc_cpu_usage
done
