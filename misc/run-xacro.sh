/opt/ros/indigo/share/xacro/xacro.py -o husky_custom.urdf \
  /home/mallan/ros/rpgnd_sim_ws/src/husky_customization/husky_custom_description/urdf/custom_description.urdf.xacro \
  laser_enabled:=false  \
  ur5_enabled:=false    \
  kinect_enabled:=false 

echo "To copy to VERVE..."
echo "cp husky_custom.urdf ~/irg/eclipse/VerveForRapid/gov.nasa.arc.verve.robot.rapid.rp_husky/models/husky_description/"

