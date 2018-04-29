;; Auto-generated. Do not edit!


(when (boundp 'roboteq_control::Peripheral)
  (if (not (find-package "ROBOTEQ_CONTROL"))
    (make-package "ROBOTEQ_CONTROL"))
  (shadow 'Peripheral (find-package "ROBOTEQ_CONTROL")))
(unless (find-package "ROBOTEQ_CONTROL::PERIPHERAL")
  (make-package "ROBOTEQ_CONTROL::PERIPHERAL"))

(in-package "ROS")
;;//! \htmlinclude Peripheral.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass roboteq_control::Peripheral
  :super ros::object
  :slots (_header _pulse_in _analog _digital_in _digital_out ))

(defmethod roboteq_control::Peripheral
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pulse_in __pulse_in) (make-array 0 :initial-element 0 :element-type :integer))
    ((:analog __analog) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:digital_in __digital_in) (make-array 0 :initial-element 0 :element-type :char))
    ((:digital_out __digital_out) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pulse_in __pulse_in)
   (setq _analog __analog)
   (setq _digital_in __digital_in)
   (setq _digital_out __digital_out)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pulse_in
   (&optional __pulse_in)
   (if __pulse_in (setq _pulse_in __pulse_in)) _pulse_in)
  (:analog
   (&optional __analog)
   (if __analog (setq _analog __analog)) _analog)
  (:digital_in
   (&optional __digital_in)
   (if __digital_in (setq _digital_in __digital_in)) _digital_in)
  (:digital_out
   (&optional __digital_out)
   (if __digital_out (setq _digital_out __digital_out)) _digital_out)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16[] _pulse_in
    (* 2    (length _pulse_in)) 4
    ;; float64[] _analog
    (* 8    (length _analog)) 4
    ;; uint8[] _digital_in
    (* 1    (length _digital_in)) 4
    ;; uint8[] _digital_out
    (* 1    (length _digital_out)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16[] _pulse_in
     (write-long (length _pulse_in) s)
     (dotimes (i (length _pulse_in))
       (write-word (elt _pulse_in i) s)
       )
     ;; float64[] _analog
     (write-long (length _analog) s)
     (dotimes (i (length _analog))
       (sys::poke (elt _analog i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8[] _digital_in
     (write-long (length _digital_in) s)
     (princ _digital_in s)
     ;; uint8[] _digital_out
     (write-long (length _digital_out) s)
     (princ _digital_out s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16[] _pulse_in
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pulse_in (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pulse_in i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64[] _analog
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _analog i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8[] _digital_in
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _digital_in (make-array n :element-type :char))
     (replace _digital_in buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _digital_out
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _digital_out (make-array n :element-type :char))
     (replace _digital_out buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get roboteq_control::Peripheral :md5sum-) "3c04fdd000fd83fd2a224fbc2a13fdda")
(setf (get roboteq_control::Peripheral :datatype-) "roboteq_control/Peripheral")
(setf (get roboteq_control::Peripheral :definition-)
      "Header header

#GPIO

#Pulse in [pag. 256]
uint16[] pulse_in

#Analog in [pag. 231]
float64[] analog

#Digital input [pag. 242]
uint8[] digital_in

#Digital outut [pag. 242]
uint8[] digital_out

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



(provide :roboteq_control/Peripheral "3c04fdd000fd83fd2a224fbc2a13fdda")


