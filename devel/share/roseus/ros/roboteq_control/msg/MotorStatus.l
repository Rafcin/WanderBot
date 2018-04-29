;; Auto-generated. Do not edit!


(when (boundp 'roboteq_control::MotorStatus)
  (if (not (find-package "ROBOTEQ_CONTROL"))
    (make-package "ROBOTEQ_CONTROL"))
  (shadow 'MotorStatus (find-package "ROBOTEQ_CONTROL")))
(unless (find-package "ROBOTEQ_CONTROL::MOTORSTATUS")
  (make-package "ROBOTEQ_CONTROL::MOTORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboteq_control::MotorStatus
  :super ros::object
  :slots (_header _volts _amps_motor _amps_batt _track ))

(defmethod roboteq_control::MotorStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:volts __volts) 0.0)
    ((:amps_motor __amps_motor) 0.0)
    ((:amps_batt __amps_batt) 0.0)
    ((:track __track) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _volts (float __volts))
   (setq _amps_motor (float __amps_motor))
   (setq _amps_batt (float __amps_batt))
   (setq _track (float __track))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:volts
   (&optional __volts)
   (if __volts (setq _volts __volts)) _volts)
  (:amps_motor
   (&optional __amps_motor)
   (if __amps_motor (setq _amps_motor __amps_motor)) _amps_motor)
  (:amps_batt
   (&optional __amps_batt)
   (if __amps_batt (setq _amps_batt __amps_batt)) _amps_batt)
  (:track
   (&optional __track)
   (if __track (setq _track __track)) _track)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _volts
    8
    ;; float64 _amps_motor
    8
    ;; float64 _amps_batt
    8
    ;; float64 _track
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _volts
       (sys::poke _volts (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _amps_motor
       (sys::poke _amps_motor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _amps_batt
       (sys::poke _amps_batt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _track
       (sys::poke _track (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _volts
     (setq _volts (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _amps_motor
     (setq _amps_motor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _amps_batt
     (setq _amps_batt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _track
     (setq _track (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roboteq_control::MotorStatus :md5sum-) "f79b5306cd75663999e1a992e3b8a85e")
(setf (get roboteq_control::MotorStatus :datatype-) "roboteq_control/MotorStatus")
(setf (get roboteq_control::MotorStatus :definition-)
      "# 50Hz feedback message for controls purposes
Header header

# Electrical power supply to the driver (V)
float64 volts

# Current flowing in the motors (A)
float64 amps_motor
float64 amps_batt

# Tracks
float64 track

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



(provide :roboteq_control/MotorStatus "f79b5306cd75663999e1a992e3b8a85e")


