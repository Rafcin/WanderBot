; Auto-generated. Do not edit!


(cl:in-package roboteq_control-msg)


;//! \htmlinclude Peripheral.msg.html

(cl:defclass <Peripheral> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pulse_in
    :reader pulse_in
    :initarg :pulse_in
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (analog
    :reader analog
    :initarg :analog
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (digital_in
    :reader digital_in
    :initarg :digital_in
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (digital_out
    :reader digital_out
    :initarg :digital_out
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Peripheral (<Peripheral>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Peripheral>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Peripheral)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboteq_control-msg:<Peripheral> is deprecated: use roboteq_control-msg:Peripheral instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Peripheral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_control-msg:header-val is deprecated.  Use roboteq_control-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pulse_in-val :lambda-list '(m))
(cl:defmethod pulse_in-val ((m <Peripheral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_control-msg:pulse_in-val is deprecated.  Use roboteq_control-msg:pulse_in instead.")
  (pulse_in m))

(cl:ensure-generic-function 'analog-val :lambda-list '(m))
(cl:defmethod analog-val ((m <Peripheral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_control-msg:analog-val is deprecated.  Use roboteq_control-msg:analog instead.")
  (analog m))

(cl:ensure-generic-function 'digital_in-val :lambda-list '(m))
(cl:defmethod digital_in-val ((m <Peripheral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_control-msg:digital_in-val is deprecated.  Use roboteq_control-msg:digital_in instead.")
  (digital_in m))

(cl:ensure-generic-function 'digital_out-val :lambda-list '(m))
(cl:defmethod digital_out-val ((m <Peripheral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_control-msg:digital_out-val is deprecated.  Use roboteq_control-msg:digital_out instead.")
  (digital_out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Peripheral>) ostream)
  "Serializes a message object of type '<Peripheral>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pulse_in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'pulse_in))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'analog))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'analog))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'digital_in))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'digital_out))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Peripheral>) istream)
  "Deserializes a message object of type '<Peripheral>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pulse_in) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pulse_in)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'analog) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'analog)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_in) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_in)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_out) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_out)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Peripheral>)))
  "Returns string type for a message object of type '<Peripheral>"
  "roboteq_control/Peripheral")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Peripheral)))
  "Returns string type for a message object of type 'Peripheral"
  "roboteq_control/Peripheral")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Peripheral>)))
  "Returns md5sum for a message object of type '<Peripheral>"
  "3c04fdd000fd83fd2a224fbc2a13fdda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Peripheral)))
  "Returns md5sum for a message object of type 'Peripheral"
  "3c04fdd000fd83fd2a224fbc2a13fdda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Peripheral>)))
  "Returns full string definition for message of type '<Peripheral>"
  (cl:format cl:nil "Header header~%~%#GPIO~%~%#Pulse in [pag. 256]~%uint16[] pulse_in~%~%#Analog in [pag. 231]~%float64[] analog~%~%#Digital input [pag. 242]~%uint8[] digital_in~%~%#Digital outut [pag. 242]~%uint8[] digital_out~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Peripheral)))
  "Returns full string definition for message of type 'Peripheral"
  (cl:format cl:nil "Header header~%~%#GPIO~%~%#Pulse in [pag. 256]~%uint16[] pulse_in~%~%#Analog in [pag. 231]~%float64[] analog~%~%#Digital input [pag. 242]~%uint8[] digital_in~%~%#Digital outut [pag. 242]~%uint8[] digital_out~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Peripheral>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pulse_in) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'analog) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_in) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_out) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Peripheral>))
  "Converts a ROS message object to a list"
  (cl:list 'Peripheral
    (cl:cons ':header (header msg))
    (cl:cons ':pulse_in (pulse_in msg))
    (cl:cons ':analog (analog msg))
    (cl:cons ':digital_in (digital_in msg))
    (cl:cons ':digital_out (digital_out msg))
))
