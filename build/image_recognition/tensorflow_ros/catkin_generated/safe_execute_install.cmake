execute_process(COMMAND "/home/nvidia/zuckbot_ws/build/image_recognition/tensorflow_ros/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/nvidia/zuckbot_ws/build/image_recognition/tensorflow_ros/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
