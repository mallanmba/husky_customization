#!/bin/bash

source devel/setup.bash


for pan in  .1 .2 .3 .2 .1 0.0
do
    echo "PAN=$pan"
    rostopic pub -1 /pan_position_controller/command std_msgs/Float64 -- $pan > /dev/null
    for tilt in .1 .2 .3 .2 .1 0.0
    do
        echo "TILT=$tilt"
        rostopic pub -1 /tilt_position_controller/command std_msgs/Float64 -- $tilt > /dev/null
    done
done


