## mallan: This adds our meshes directory to Gazebo's search path, but
## there has got to be a better way than setting environment variables to do this
## FIXME: do this without setting environment variables!
#export GAZEBO_RESOURCE_PATH="$(catkin_find --first-only husky_custom_gazebo meshes):${GAZEBO_RESOURCE_PATH}"
export GAZEBO_MODEL_PATH="$(catkin_find --first-only husky_custom_gazebo models):${GAZEBO_MODEL_PATH}"

