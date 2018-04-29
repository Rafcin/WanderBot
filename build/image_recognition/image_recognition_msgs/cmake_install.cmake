# Install script for directory: /home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/zuckbot_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_recognition_msgs/msg" TYPE FILE FILES
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg"
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_recognition_msgs/srv" TYPE FILE FILES
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv"
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv"
    "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_recognition_msgs/cmake" TYPE FILE FILES "/home/nvidia/zuckbot_ws/build/image_recognition/image_recognition_msgs/catkin_generated/installspace/image_recognition_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/zuckbot_ws/devel/include/image_recognition_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/zuckbot_ws/devel/share/roseus/ros/image_recognition_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/zuckbot_ws/devel/share/common-lisp/ros/image_recognition_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/zuckbot_ws/devel/share/gennodejs/ros/image_recognition_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/nvidia/zuckbot_ws/devel/lib/python2.7/dist-packages/image_recognition_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/zuckbot_ws/devel/lib/python2.7/dist-packages/image_recognition_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/zuckbot_ws/build/image_recognition/image_recognition_msgs/catkin_generated/installspace/image_recognition_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_recognition_msgs/cmake" TYPE FILE FILES "/home/nvidia/zuckbot_ws/build/image_recognition/image_recognition_msgs/catkin_generated/installspace/image_recognition_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_recognition_msgs/cmake" TYPE FILE FILES
    "/home/nvidia/zuckbot_ws/build/image_recognition/image_recognition_msgs/catkin_generated/installspace/image_recognition_msgsConfig.cmake"
    "/home/nvidia/zuckbot_ws/build/image_recognition/image_recognition_msgs/catkin_generated/installspace/image_recognition_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/image_recognition_msgs" TYPE FILE FILES "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/package.xml")
endif()

