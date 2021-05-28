FROM osrf/ros:kinetic-desktop-full

RUN apt-get -y update && apt-get install -y \
    iputils-ping \
    net-tools \
    wget \
    screen \
    git \
    nano \
    vim \
    htop \
    ros-kinetic-joy \
    ros-kinetic-teleop-twist-joy \
    ros-kinetic-teleop-twist-keyboard \ 
    ros-kinetic-laser-proc \
    ros-kinetic-rgbd-launch \
    ros-kinetic-depthimage-to-laserscan \
    ros-kinetic-rosserial-arduino \ 
    ros-kinetic-rosserial-python \
    ros-kinetic-rosserial-server \ 
    ros-kinetic-rosserial-client \ 
    ros-kinetic-rosserial-msgs \
    ros-kinetic-amcl \
    ros-kinetic-map-server \
    ros-kinetic-move-base \
    ros-kinetic-urdf \
    ros-kinetic-xacro \
    ros-kinetic-compressed-image-transport \
    ros-kinetic-rqt-image-view \
    ros-kinetic-gmapping \
    ros-kinetic-navigation \
    ros-kinetic-interactive-markers \
    ros-kinetic-turtlebot3-gazebo \
    ros-kinetic-dwa-local-planner
# RUN apt-get -y install python-pip
# RUN pip install --upgrade networkx==2.2
RUN mkdir -p /root/catkin_ws/src
WORKDIR /root/catkin_ws
RUN /bin/bash -c "source /opt/ros/kinetic/setup.bash"
RUN echo "source /opt/ros/kinetic/setup.sh" >> /root/.bashrc
RUN echo "source /root/catkin_ws/devel/setup.bash" >> /root/.bashrc
WORKDIR /root/catkin_ws/src

RUN apt-get install -y ros-kinetic-dwa-local-planner