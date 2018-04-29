; Auto-generated. Do not edit!


(cl:in-package image_recognition_msgs-msg)


;//! \htmlinclude CategoricalDistribution.msg.html

(cl:defclass <CategoricalDistribution> (roslisp-msg-protocol:ros-message)
  ((probabilities
    :reader probabilities
    :initarg :probabilities
    :type (cl:vector image_recognition_msgs-msg:CategoryProbability)
   :initform (cl:make-array 0 :element-type 'image_recognition_msgs-msg:CategoryProbability :initial-element (cl:make-instance 'image_recognition_msgs-msg:CategoryProbability)))
   (unknown_probability
    :reader unknown_probability
    :initarg :unknown_probability
    :type cl:float
    :initform 0.0))
)

(cl:defclass CategoricalDistribution (<CategoricalDistribution>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CategoricalDistribution>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CategoricalDistribution)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-msg:<CategoricalDistribution> is deprecated: use image_recognition_msgs-msg:CategoricalDistribution instead.")))

(cl:ensure-generic-function 'probabilities-val :lambda-list '(m))
(cl:defmethod probabilities-val ((m <CategoricalDistribution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:probabilities-val is deprecated.  Use image_recognition_msgs-msg:probabilities instead.")
  (probabilities m))

(cl:ensure-generic-function 'unknown_probability-val :lambda-list '(m))
(cl:defmethod unknown_probability-val ((m <CategoricalDistribution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:unknown_probability-val is deprecated.  Use image_recognition_msgs-msg:unknown_probability instead.")
  (unknown_probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CategoricalDistribution>) ostream)
  "Serializes a message object of type '<CategoricalDistribution>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'probabilities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'probabilities))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'unknown_probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CategoricalDistribution>) istream)
  "Deserializes a message object of type '<CategoricalDistribution>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'probabilities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'probabilities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'image_recognition_msgs-msg:CategoryProbability))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'unknown_probability) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CategoricalDistribution>)))
  "Returns string type for a message object of type '<CategoricalDistribution>"
  "image_recognition_msgs/CategoricalDistribution")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CategoricalDistribution)))
  "Returns string type for a message object of type 'CategoricalDistribution"
  "image_recognition_msgs/CategoricalDistribution")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CategoricalDistribution>)))
  "Returns md5sum for a message object of type '<CategoricalDistribution>"
  "33d3c52e53151a3b74f712a5f80b67be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CategoricalDistribution)))
  "Returns md5sum for a message object of type 'CategoricalDistribution"
  "33d3c52e53151a3b74f712a5f80b67be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CategoricalDistribution>)))
  "Returns full string definition for message of type '<CategoricalDistribution>"
  (cl:format cl:nil "# Categorical distribution; if the probability of an element is below the unknown~%# probability, it can be classified as unknown~%CategoryProbability[] probabilities~%float32 unknown_probability~%~%================================================================================~%MSG: image_recognition_msgs/CategoryProbability~%# A category (label) with its probability (probability) that ranges from 0..1~%string  label~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CategoricalDistribution)))
  "Returns full string definition for message of type 'CategoricalDistribution"
  (cl:format cl:nil "# Categorical distribution; if the probability of an element is below the unknown~%# probability, it can be classified as unknown~%CategoryProbability[] probabilities~%float32 unknown_probability~%~%================================================================================~%MSG: image_recognition_msgs/CategoryProbability~%# A category (label) with its probability (probability) that ranges from 0..1~%string  label~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CategoricalDistribution>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'probabilities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CategoricalDistribution>))
  "Converts a ROS message object to a list"
  (cl:list 'CategoricalDistribution
    (cl:cons ':probabilities (probabilities msg))
    (cl:cons ':unknown_probability (unknown_probability msg))
))
