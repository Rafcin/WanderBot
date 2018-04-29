;; Auto-generated. Do not edit!


(when (boundp 'ros_ultrasonic_bumper::ultrasnd_bump_ranges)
  (if (not (find-package "ROS_ULTRASONIC_BUMPER"))
    (make-package "ROS_ULTRASONIC_BUMPER"))
  (shadow 'ultrasnd_bump_ranges (find-package "ROS_ULTRASONIC_BUMPER")))
(unless (find-package "ROS_ULTRASONIC_BUMPER::ULTRASND_BUMP_RANGES")
  (make-package "ROS_ULTRASONIC_BUMPER::ULTRASND_BUMP_RANGES"))

(in-package "ROS")
;;//! \htmlinclude ultrasnd_bump_ranges.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ros_ultrasonic_bumper::ultrasnd_bump_ranges
  :super ros::object
  :slots (_sensor_FL _sensor_FR _sensor_RR _sensor_RL ))

(defmethod ros_ultrasonic_bumper::ultrasnd_bump_ranges
  (:init
   (&key
    ((:sensor_FL __sensor_FL) (instance sensor_msgs::Range :init))
    ((:sensor_FR __sensor_FR) (instance sensor_msgs::Range :init))
    ((:sensor_RR __sensor_RR) (instance sensor_msgs::Range :init))
    ((:sensor_RL __sensor_RL) (instance sensor_msgs::Range :init))
    )
   (send-super :init)
   (setq _sensor_FL __sensor_FL)
   (setq _sensor_FR __sensor_FR)
   (setq _sensor_RR __sensor_RR)
   (setq _sensor_RL __sensor_RL)
   self)
  (:sensor_FL
   (&rest __sensor_FL)
   (if (keywordp (car __sensor_FL))
       (send* _sensor_FL __sensor_FL)
     (progn
       (if __sensor_FL (setq _sensor_FL (car __sensor_FL)))
       _sensor_FL)))
  (:sensor_FR
   (&rest __sensor_FR)
   (if (keywordp (car __sensor_FR))
       (send* _sensor_FR __sensor_FR)
     (progn
       (if __sensor_FR (setq _sensor_FR (car __sensor_FR)))
       _sensor_FR)))
  (:sensor_RR
   (&rest __sensor_RR)
   (if (keywordp (car __sensor_RR))
       (send* _sensor_RR __sensor_RR)
     (progn
       (if __sensor_RR (setq _sensor_RR (car __sensor_RR)))
       _sensor_RR)))
  (:sensor_RL
   (&rest __sensor_RL)
   (if (keywordp (car __sensor_RL))
       (send* _sensor_RL __sensor_RL)
     (progn
       (if __sensor_RL (setq _sensor_RL (car __sensor_RL)))
       _sensor_RL)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Range _sensor_FL
    (send _sensor_FL :serialization-length)
    ;; sensor_msgs/Range _sensor_FR
    (send _sensor_FR :serialization-length)
    ;; sensor_msgs/Range _sensor_RR
    (send _sensor_RR :serialization-length)
    ;; sensor_msgs/Range _sensor_RL
    (send _sensor_RL :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Range _sensor_FL
       (send _sensor_FL :serialize s)
     ;; sensor_msgs/Range _sensor_FR
       (send _sensor_FR :serialize s)
     ;; sensor_msgs/Range _sensor_RR
       (send _sensor_RR :serialize s)
     ;; sensor_msgs/Range _sensor_RL
       (send _sensor_RL :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Range _sensor_FL
     (send _sensor_FL :deserialize buf ptr-) (incf ptr- (send _sensor_FL :serialization-length))
   ;; sensor_msgs/Range _sensor_FR
     (send _sensor_FR :deserialize buf ptr-) (incf ptr- (send _sensor_FR :serialization-length))
   ;; sensor_msgs/Range _sensor_RR
     (send _sensor_RR :deserialize buf ptr-) (incf ptr- (send _sensor_RR :serialization-length))
   ;; sensor_msgs/Range _sensor_RL
     (send _sensor_RL :deserialize buf ptr-) (incf ptr- (send _sensor_RL :serialization-length))
   ;;
   self)
  )

(setf (get ros_ultrasonic_bumper::ultrasnd_bump_ranges :md5sum-) "ae0bc0ffa95c0c13bd881b387004144e")
(setf (get ros_ultrasonic_bumper::ultrasnd_bump_ranges :datatype-) "ros_ultrasonic_bumper/ultrasnd_bump_ranges")
(setf (get ros_ultrasonic_bumper::ultrasnd_bump_ranges :definition-)
      "# Four Ultrasonic Range Sensors

#      --- Front Lf ----------- Front Rg ---
#      |                                   |
#      |                                   |
#      |                                   |
#      --- Rear Lf ------------ Rear Rg ----

# Front Right
sensor_msgs/Range sensor_FL

# Front Left
sensor_msgs/Range sensor_FR

# Rear Left
sensor_msgs/Range sensor_RR

# Rear Right
sensor_msgs/Range sensor_RL

================================================================================
MSG: sensor_msgs/Range
# Single range reading from an active ranger that emits energy and reports
# one range reading that is valid along an arc at the distance measured. 
# This message is  not appropriate for laser scanners. See the LaserScan
# message if you are working with a laser scanner.

# This message also can represent a fixed-distance (binary) ranger.  This
# sensor will have min_range===max_range===distance of detection.
# These sensors follow REP 117 and will output -Inf if the object is detected
# and +Inf if the object is outside of the detection range.

Header header           # timestamp in the header is the time the ranger
                        # returned the distance reading

# Radiation type enums
# If you want a value added to this list, send an email to the ros-users list
uint8 ULTRASOUND=0
uint8 INFRARED=1

uint8 radiation_type    # the type of radiation used by the sensor
                        # (sound, IR, etc) [enum]

float32 field_of_view   # the size of the arc that the distance reading is
                        # valid for [rad]
                        # the object causing the range reading may have
                        # been anywhere within -field_of_view/2 and
                        # field_of_view/2 at the measured range. 
                        # 0 angle corresponds to the x-axis of the sensor.

float32 min_range       # minimum range value [m]
float32 max_range       # maximum range value [m]
                        # Fixed distance rangers require min_range==max_range

float32 range           # range data [m]
                        # (Note: values < range_min or > range_max
                        # should be discarded)
                        # Fixed distance rangers only output -Inf or +Inf.
                        # -Inf represents a detection within fixed distance.
                        # (Detection too close to the sensor to quantify)
                        # +Inf represents no detection within the fixed distance.
                        # (Object out of range)
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :ros_ultrasonic_bumper/ultrasnd_bump_ranges "ae0bc0ffa95c0c13bd881b387004144e")


