#!/bin/bash
while true; do
    sleep 51
    ct=`cat /sys/class/power_supply/BAT1/energy_now`
    c0=`cat /sys/class/power_supply/BAT1/energy_full`
    (( ct*100 / c0 < 5 )) && swaynag -m 'low battery'
done
