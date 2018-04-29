; Auto-generated. Do not edit!


(cl:in-package image_recognition_msgs-msg)


;//! \htmlinclude CategoryProbability.msg.html

(cl:defclass <CategoryProbability> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0))
)

(cl:defclass CategoryProbability (<CategoryProbability>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CategoryProbability>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CategoryProbability)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-msg:<CategoryProbability> is deprecated: use image_recognition_msgs-msg:CategoryProbability instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <CategoryProbability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:label-val is deprecated.  Use image_recognition_msgs-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <CategoryProbability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:probability-val is deprecated.  Use image_recognition_msgs-msg:probability instead.")
  (probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CategoryProbability>) ostream)
  "Serializes a message object of type '<CategoryProbability>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CategoryProbability>) istream)
  "Deserializes a message object of type '<CategoryProbability>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CategoryProbability>)))
  "Returns string type for a message object of type '<CategoryProbability>"
  "image_recognition_msgs/CategoryProbability")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CategoryProbability)))
  "Returns string type for a message object of type 'CategoryProbability"
  "image_recognition_msgs/CategoryProbability")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CategoryProbability>)))
  "Returns md5sum for a message object of type '<CategoryProbability>"
  "eb7ef1e65c230d37e0b3ceae14668372")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CategoryProbability)))
  "Returns md5sum for a message object of type 'CategoryProbability"
  "eb7ef1e65c230d37e0b3ceae14668372")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CategoryProbability>)))
  "Returns full string definition for message of type '<CategoryProbability>"
  (cl:format cl:nil "# A category (label) with its probability (probability) that ranges from 0..1~%string  label~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CategoryProbability)))
  "Returns full string definition for message of type 'CategoryProbability"
  (cl:format cl:nil "# A category (label) with its probability (probability) that ranges from 0..1~%string  label~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CategoryProbability>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CategoryProbability>))
  "Converts a ROS message object to a list"
  (cl:list 'CategoryProbability
    (cl:cons ':label (label msg))
    (cl:cons ':probability (probability msg))
))
