cmake_minimum_required(VERSION 3.0.2)
project(lab_setup)
find_package(catkin REQUIRED)
catkin_package()
install(DIRECTORY
  launch
  param
  config
  rviz
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
