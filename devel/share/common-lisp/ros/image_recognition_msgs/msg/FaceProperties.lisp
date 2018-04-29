; Auto-generated. Do not edit!


(cl:in-package image_recognition_msgs-msg)


;//! \htmlinclude FaceProperties.msg.html

(cl:defclass <FaceProperties> (roslisp-msg-protocol:ros-message)
  ((gender
    :reader gender
    :initarg :gender
    :type cl:fixnum
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FaceProperties (<FaceProperties>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceProperties>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceProperties)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-msg:<FaceProperties> is deprecated: use image_recognition_msgs-msg:FaceProperties instead.")))

(cl:ensure-generic-function 'gender-val :lambda-list '(m))
(cl:defmethod gender-val ((m <FaceProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:gender-val is deprecated.  Use image_recognition_msgs-msg:gender instead.")
  (gender m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <FaceProperties>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:age-val is deprecated.  Use image_recognition_msgs-msg:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FaceProperties>)))
    "Constants for message type '<FaceProperties>"
  '((:MALE . 0)
    (:FEMALE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FaceProperties)))
    "Constants for message type 'FaceProperties"
  '((:MALE . 0)
    (:FEMALE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceProperties>) ostream)
  "Serializes a message object of type '<FaceProperties>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gender)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceProperties>) istream)
  "Deserializes a message object of type '<FaceProperties>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gender)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceProperties>)))
  "Returns string type for a message object of type '<FaceProperties>"
  "image_recognition_msgs/FaceProperties")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceProperties)))
  "Returns string type for a message object of type 'FaceProperties"
  "image_recognition_msgs/FaceProperties")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceProperties>)))
  "Returns md5sum for a message object of type '<FaceProperties>"
  "0509e719654f194b1f2f178434bcb902")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceProperties)))
  "Returns md5sum for a message object of type 'FaceProperties"
  "0509e719654f194b1f2f178434bcb902")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceProperties>)))
  "Returns full string definition for message of type '<FaceProperties>"
  (cl:format cl:nil "# Face properties~%~%# Gender definitions~%uint8 MALE=0~%uint8 FEMALE=1~%~%# Gender, either MALE of FEMALE~%uint8 gender~%~%# The age of the face~%uint8 age~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceProperties)))
  "Returns full string definition for message of type 'FaceProperties"
  (cl:format cl:nil "# Face properties~%~%# Gender definitions~%uint8 MALE=0~%uint8 FEMALE=1~%~%# Gender, either MALE of FEMALE~%uint8 gender~%~%# The age of the face~%uint8 age~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceProperties>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceProperties>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceProperties
    (cl:cons ':gender (gender msg))
    (cl:cons ':age (age msg))
))
