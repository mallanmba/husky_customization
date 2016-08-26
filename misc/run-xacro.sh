/opt/ros/indigo/share/xacro/xacro.py -o husky_custom.urdf \
  ${HUSKY_GAZEBO_DESCRIPTION} \
  laser_enabled:=false  \
  ur5_enabled:=false    \
  kinect_enabled:=false 

echo "To copy to VERVE..."
echo "cp husky_custom.urdf ~/irg/eclipse/VerveForRapid/gov.nasa.arc.verve.robot.rapid.rp_husky/models/husky_description/"

