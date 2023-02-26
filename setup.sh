setup_wd=$(pwd)

vcs import src < dependencies.rosinstall

cd ./src/Livox-SDK/build
cmake ..
make
sudo make install

cd $setup_wd

rosdep install --from-paths src --ignore-src -r -y
pip install -r requirements.txt

catkin init
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release
catkin build
source ./devel/setup.bash

