#!/bin/bash

source devel/setup.bash

NETWORK_ROSCORE=localhost

echo "rp_conops_test1.launch"
xterm -title "rp_conops_test1.launch" -e "roslaunch husky_custom_gazebo rp_conops_test1.launch;" &
sleep 5

echo "rqt"
xterm -title "rqt" -e "rqt;" &
sleep 2

echo "rqt_image_view /left/NavCamStereo/image_raw"
xterm -title "left camera" -e "rqt_image_view /left/NavCamStereo/image_raw;" &
sleep 1
echo "rqt_image_view /right/NavCamStereo/image_raw"
xterm -title "right camera" -e "rqt_image_view /right/NavCamStereo/image_raw;" &

echo ""
echo "Type Control-C here to close all windows and exit sim"
sleep infinity


