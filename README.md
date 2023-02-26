# lidar_ws
This contains a ROS 1 workspace for playing around with my Livox Avia LiDAR

## Installation

### Manual
* Make sure you have the dependencies:
  * Livox SDK (how to install: see in its README after downloading its repo)
* The required repos are downloaded with *vsctool*
  * Installation: ```sudo apt install python3-vcstool```
  * Usage: ```vcs import src < dependencies.rosinstall```
* ```rosdep install --from-paths src --ignore-src -r -y```
* Python packages might not by found by rosdep... ```pip install -r requirements.txt```
* Build the workspace manually

### All at once
* Run ```./setup.sh```

## Usage
Do one of the following:
* ```roslaunch lab_setup show_cloud.launch```
* ```roslaunch floor_fit demo_floor_fit.launch```

