;; Auto-generated. Do not edit!


(when (boundp 'roboteq_control::ControlStatus)
  (if (not (find-package "ROBOTEQ_CONTROL"))
    (make-package "ROBOTEQ_CONTROL"))
  (shadow 'ControlStatus (find-package "ROBOTEQ_CONTROL")))
(unless (find-package "ROBOTEQ_CONTROL::CONTROLSTATUS")
  (make-package "ROBOTEQ_CONTROL::CONTROLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ControlStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboteq_control::ControlStatus
  :super ros::object
  :slots (_header _pwm _reference _feedback _loop_error ))

(defmethod roboteq_control::ControlStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pwm __pwm) 0.0)
    ((:reference __reference) 0.0)
    ((:feedback __feedback) 0.0)
    ((:loop_error __loop_error) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pwm (float __pwm))
   (setq _reference (float __reference))
   (setq _feedback (float __feedback))
   (setq _loop_error (float __loop_error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pwm
   (&optional __pwm)
   (if __pwm (setq _pwm __pwm)) _pwm)
  (:reference
   (&optional __reference)
   (if __reference (setq _reference __reference)) _reference)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:loop_error
   (&optional __loop_error)
   (if __loop_error (setq _loop_error __loop_error)) _loop_error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _pwm
    8
    ;; float64 _reference
    8
    ;; float64 _feedback
    8
    ;; float64 _loop_error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _pwm
       (sys::poke _pwm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reference
       (sys::poke _reference (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _feedback
       (sys::poke _feedback (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _loop_error
       (sys::poke _loop_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _pwm
     (setq _pwm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reference
     (setq _reference (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _feedback
     (setq _feedback (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _loop_error
     (setq _loop_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get roboteq_control::ControlStatus :md5sum-) "67f973d0cebdda296868bd3530b250ad")
(setf (get roboteq_control::ControlStatus :datatype-) "roboteq_control/ControlStatus")
(setf (get roboteq_control::ControlStatus :definition-)
      "# 50Hz feedback message for controls purposes
Header header

# PWM
float64 pwm

# reference
float64 reference

# feedback
float64 feedback

# Loop error
float64 loop_error

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



(provide :roboteq_control/ControlStatus "67f973d0cebdda296868bd3530b250ad")


