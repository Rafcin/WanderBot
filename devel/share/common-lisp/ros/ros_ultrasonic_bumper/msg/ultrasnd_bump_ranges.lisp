; Auto-generated. Do not edit!


(cl:in-package ros_ultrasonic_bumper-msg)


;//! \htmlinclude ultrasnd_bump_ranges.msg.html

(cl:defclass <ultrasnd_bump_ranges> (roslisp-msg-protocol:ros-message)
  ((sensor_FL
    :reader sensor_FL
    :initarg :sensor_FL
    :type sensor_msgs-msg:Range
    :initform (cl:make-instance 'sensor_msgs-msg:Range))
   (sensor_FR
    :reader sensor_FR
    :initarg :sensor_FR
    :type sensor_msgs-msg:Range
    :initform (cl:make-instance 'sensor_msgs-msg:Range))
   (sensor_RR
    :reader sensor_RR
    :initarg :sensor_RR
    :type sensor_msgs-msg:Range
    :initform (cl:make-instance 'sensor_msgs-msg:Range))
   (sensor_RL
    :reader sensor_RL
    :initarg :sensor_RL
    :type sensor_msgs-msg:Range
    :initform (cl:make-instance 'sensor_msgs-msg:Range)))
)

(cl:defclass ultrasnd_bump_ranges (<ultrasnd_bump_ranges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasnd_bump_ranges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasnd_bump_ranges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_ultrasonic_bumper-msg:<ultrasnd_bump_ranges> is deprecated: use ros_ultrasonic_bumper-msg:ultrasnd_bump_ranges instead.")))

(cl:ensure-generic-function 'sensor_FL-val :lambda-list '(m))
(cl:defmethod sensor_FL-val ((m <ultrasnd_bump_ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_ultrasonic_bumper-msg:sensor_FL-val is deprecated.  Use ros_ultrasonic_bumper-msg:sensor_FL instead.")
  (sensor_FL m))

(cl:ensure-generic-function 'sensor_FR-val :lambda-list '(m))
(cl:defmethod sensor_FR-val ((m <ultrasnd_bump_ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_ultrasonic_bumper-msg:sensor_FR-val is deprecated.  Use ros_ultrasonic_bumper-msg:sensor_FR instead.")
  (sensor_FR m))

(cl:ensure-generic-function 'sensor_RR-val :lambda-list '(m))
(cl:defmethod sensor_RR-val ((m <ultrasnd_bump_ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_ultrasonic_bumper-msg:sensor_RR-val is deprecated.  Use ros_ultrasonic_bumper-msg:sensor_RR instead.")
  (sensor_RR m))

(cl:ensure-generic-function 'sensor_RL-val :lambda-list '(m))
(cl:defmethod sensor_RL-val ((m <ultrasnd_bump_ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_ultrasonic_bumper-msg:sensor_RL-val is deprecated.  Use ros_ultrasonic_bumper-msg:sensor_RL instead.")
  (sensor_RL m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasnd_bump_ranges>) ostream)
  "Serializes a message object of type '<ultrasnd_bump_ranges>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_FL) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_FR) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_RR) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_RL) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasnd_bump_ranges>) istream)
  "Deserializes a message object of type '<ultrasnd_bump_ranges>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_FL) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_FR) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_RR) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_RL) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasnd_bump_ranges>)))
  "Returns string type for a message object of type '<ultrasnd_bump_ranges>"
  "ros_ultrasonic_bumper/ultrasnd_bump_ranges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasnd_bump_ranges)))
  "Returns string type for a message object of type 'ultrasnd_bump_ranges"
  "ros_ultrasonic_bumper/ultrasnd_bump_ranges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasnd_bump_ranges>)))
  "Returns md5sum for a message object of type '<ultrasnd_bump_ranges>"
  "ae0bc0ffa95c0c13bd881b387004144e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasnd_bump_ranges)))
  "Returns md5sum for a message object of type 'ultrasnd_bump_ranges"
  "ae0bc0ffa95c0c13bd881b387004144e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasnd_bump_ranges>)))
  "Returns full string definition for message of type '<ultrasnd_bump_ranges>"
  (cl:format cl:nil "# Four Ultrasonic Range Sensors~%~%#      --- Front Lf ----------- Front Rg ---~%#      |                                   |~%#      |                                   |~%#      |                                   |~%#      --- Rear Lf ------------ Rear Rg ----~%~%# Front Right~%sensor_msgs/Range sensor_FL~%~%# Front Left~%sensor_msgs/Range sensor_FR~%~%# Rear Left~%sensor_msgs/Range sensor_RR~%~%# Rear Right~%sensor_msgs/Range sensor_RL~%~%================================================================================~%MSG: sensor_msgs/Range~%# Single range reading from an active ranger that emits energy and reports~%# one range reading that is valid along an arc at the distance measured. ~%# This message is  not appropriate for laser scanners. See the LaserScan~%# message if you are working with a laser scanner.~%~%# This message also can represent a fixed-distance (binary) ranger.  This~%# sensor will have min_range===max_range===distance of detection.~%# These sensors follow REP 117 and will output -Inf if the object is detected~%# and +Inf if the object is outside of the detection range.~%~%Header header           # timestamp in the header is the time the ranger~%                        # returned the distance reading~%~%# Radiation type enums~%# If you want a value added to this list, send an email to the ros-users list~%uint8 ULTRASOUND=0~%uint8 INFRARED=1~%~%uint8 radiation_type    # the type of radiation used by the sensor~%                        # (sound, IR, etc) [enum]~%~%float32 field_of_view   # the size of the arc that the distance reading is~%                        # valid for [rad]~%                        # the object causing the range reading may have~%                        # been anywhere within -field_of_view/2 and~%                        # field_of_view/2 at the measured range. ~%                        # 0 angle corresponds to the x-axis of the sensor.~%~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%                        # Fixed distance rangers require min_range==max_range~%~%float32 range           # range data [m]~%                        # (Note: values < range_min or > range_max~%                        # should be discarded)~%                        # Fixed distance rangers only output -Inf or +Inf.~%                        # -Inf represents a detection within fixed distance.~%                        # (Detection too close to the sensor to quantify)~%                        # +Inf represents no detection within the fixed distance.~%                        # (Object out of range)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasnd_bump_ranges)))
  "Returns full string definition for message of type 'ultrasnd_bump_ranges"
  (cl:format cl:nil "# Four Ultrasonic Range Sensors~%~%#      --- Front Lf ----------- Front Rg ---~%#      |                                   |~%#      |                                   |~%#      |                                   |~%#      --- Rear Lf ------------ Rear Rg ----~%~%# Front Right~%sensor_msgs/Range sensor_FL~%~%# Front Left~%sensor_msgs/Range sensor_FR~%~%# Rear Left~%sensor_msgs/Range sensor_RR~%~%# Rear Right~%sensor_msgs/Range sensor_RL~%~%================================================================================~%MSG: sensor_msgs/Range~%# Single range reading from an active ranger that emits energy and reports~%# one range reading that is valid along an arc at the distance measured. ~%# This message is  not appropriate for laser scanners. See the LaserScan~%# message if you are working with a laser scanner.~%~%# This message also can represent a fixed-distance (binary) ranger.  This~%# sensor will have min_range===max_range===distance of detection.~%# These sensors follow REP 117 and will output -Inf if the object is detected~%# and +Inf if the object is outside of the detection range.~%~%Header header           # timestamp in the header is the time the ranger~%                        # returned the distance reading~%~%# Radiation type enums~%# If you want a value added to this list, send an email to the ros-users list~%uint8 ULTRASOUND=0~%uint8 INFRARED=1~%~%uint8 radiation_type    # the type of radiation used by the sensor~%                        # (sound, IR, etc) [enum]~%~%float32 field_of_view   # the size of the arc that the distance reading is~%                        # valid for [rad]~%                        # the object causing the range reading may have~%                        # been anywhere within -field_of_view/2 and~%                        # field_of_view/2 at the measured range. ~%                        # 0 angle corresponds to the x-axis of the sensor.~%~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%                        # Fixed distance rangers require min_range==max_range~%~%float32 range           # range data [m]~%                        # (Note: values < range_min or > range_max~%                        # should be discarded)~%                        # Fixed distance rangers only output -Inf or +Inf.~%                        # -Inf represents a detection within fixed distance.~%                        # (Detection too close to the sensor to quantify)~%                        # +Inf represents no detection within the fixed distance.~%                        # (Object out of range)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasnd_bump_ranges>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_FL))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_FR))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_RR))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_RL))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasnd_bump_ranges>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasnd_bump_ranges
    (cl:cons ':sensor_FL (sensor_FL msg))
    (cl:cons ':sensor_FR (sensor_FR msg))
    (cl:cons ':sensor_RR (sensor_RR msg))
    (cl:cons ':sensor_RL (sensor_RL msg))
))
