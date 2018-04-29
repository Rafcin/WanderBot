# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "image_recognition_msgs: 6 messages, 3 services")

set(MSG_I_FLAGS "-Iimage_recognition_msgs:/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(image_recognition_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg" ""
)

get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv" "image_recognition_msgs/Annotation:sensor_msgs/RegionOfInterest:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg" ""
)

get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg" "image_recognition_msgs/CategoryProbability:sensor_msgs/RegionOfInterest:image_recognition_msgs/CategoricalDistribution"
)

get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg" "image_recognition_msgs/CategoryProbability"
)

get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv" "sensor_msgs/RegionOfInterest:std_msgs/Header:image_recognition_msgs/CategoryProbability:sensor_msgs/Image:image_recognition_msgs/CategoricalDistribution:image_recognition_msgs/Recognition"
)

get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv" "sensor_msgs/Image:std_msgs/Header:image_recognition_msgs/FaceProperties"
)

get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg" NAME_WE)
add_custom_target(_image_recognition_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_recognition_msgs" "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg" "image_recognition_msgs/CategoryProbability:image_recognition_msgs/Recognition:sensor_msgs/RegionOfInterest:image_recognition_msgs/CategoricalDistribution:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)

### Generating Services
_generate_srv_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_cpp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
)

### Generating Module File
_generate_module_cpp(image_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(image_recognition_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(image_recognition_msgs_generate_messages image_recognition_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_cpp _image_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_recognition_msgs_gencpp)
add_dependencies(image_recognition_msgs_gencpp image_recognition_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_recognition_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)

### Generating Services
_generate_srv_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_eus(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
)

### Generating Module File
_generate_module_eus(image_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(image_recognition_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(image_recognition_msgs_generate_messages image_recognition_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_eus _image_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_recognition_msgs_geneus)
add_dependencies(image_recognition_msgs_geneus image_recognition_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_recognition_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)

### Generating Services
_generate_srv_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_lisp(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
)

### Generating Module File
_generate_module_lisp(image_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(image_recognition_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(image_recognition_msgs_generate_messages image_recognition_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_lisp _image_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_recognition_msgs_genlisp)
add_dependencies(image_recognition_msgs_genlisp image_recognition_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_recognition_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)

### Generating Services
_generate_srv_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_nodejs(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
)

### Generating Module File
_generate_module_nodejs(image_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(image_recognition_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(image_recognition_msgs_generate_messages image_recognition_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_nodejs _image_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_recognition_msgs_gennodejs)
add_dependencies(image_recognition_msgs_gennodejs image_recognition_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_recognition_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)
_generate_msg_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)

### Generating Services
_generate_srv_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg;/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)
_generate_srv_py(image_recognition_msgs
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv"
  "${MSG_I_FLAGS}"
  "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
)

### Generating Module File
_generate_module_py(image_recognition_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(image_recognition_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(image_recognition_msgs_generate_messages image_recognition_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/FaceProperties.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Annotate.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoryProbability.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognition.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/CategoricalDistribution.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/Recognize.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/srv/GetFaceProperties.srv" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/zuckbot_ws/src/image_recognition/image_recognition_msgs/msg/Recognitions.msg" NAME_WE)
add_dependencies(image_recognition_msgs_generate_messages_py _image_recognition_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_recognition_msgs_genpy)
add_dependencies(image_recognition_msgs_genpy image_recognition_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_recognition_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_recognition_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(image_recognition_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_recognition_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(image_recognition_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_recognition_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(image_recognition_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_recognition_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(image_recognition_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_recognition_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(image_recognition_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
