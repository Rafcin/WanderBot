; Auto-generated. Do not edit!


(cl:in-package image_recognition_msgs-msg)


;//! \htmlinclude Recognitions.msg.html

(cl:defclass <Recognitions> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (recognitions
    :reader recognitions
    :initarg :recognitions
    :type (cl:vector image_recognition_msgs-msg:Recognition)
   :initform (cl:make-array 0 :element-type 'image_recognition_msgs-msg:Recognition :initial-element (cl:make-instance 'image_recognition_msgs-msg:Recognition))))
)

(cl:defclass Recognitions (<Recognitions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognitions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognitions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-msg:<Recognitions> is deprecated: use image_recognition_msgs-msg:Recognitions instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Recognitions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:header-val is deprecated.  Use image_recognition_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'recognitions-val :lambda-list '(m))
(cl:defmethod recognitions-val ((m <Recognitions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:recognitions-val is deprecated.  Use image_recognition_msgs-msg:recognitions instead.")
  (recognitions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognitions>) ostream)
  "Serializes a message object of type '<Recognitions>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recognitions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'recognitions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognitions>) istream)
  "Deserializes a message object of type '<Recognitions>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'recognitions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'recognitions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'image_recognition_msgs-msg:Recognition))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognitions>)))
  "Returns string type for a message object of type '<Recognitions>"
  "image_recognition_msgs/Recognitions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognitions)))
  "Returns string type for a message object of type 'Recognitions"
  "image_recognition_msgs/Recognitions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognitions>)))
  "Returns md5sum for a message object of type '<Recognitions>"
  "8ecb10adb1c61d004d2e3c9a37418093")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognitions)))
  "Returns md5sum for a message object of type 'Recognitions"
  "8ecb10adb1c61d004d2e3c9a37418093")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognitions>)))
  "Returns full string definition for message of type '<Recognitions>"
  (cl:format cl:nil "std_msgs/Header header~%Recognition[] recognitions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: image_recognition_msgs/Recognition~%# A recognition in an image region of interest (roi) that is described by a~%# categorical distribution that contains of labels with their probabilities.~%# An optional group_id can be specified to group recognitions together~%~%CategoricalDistribution categorical_distribution~%sensor_msgs/RegionOfInterest roi~%uint32 group_id~%================================================================================~%MSG: image_recognition_msgs/CategoricalDistribution~%# Categorical distribution; if the probability of an element is below the unknown~%# probability, it can be classified as unknown~%CategoryProbability[] probabilities~%float32 unknown_probability~%~%================================================================================~%MSG: image_recognition_msgs/CategoryProbability~%# A category (label) with its probability (probability) that ranges from 0..1~%string  label~%float32 probability~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognitions)))
  "Returns full string definition for message of type 'Recognitions"
  (cl:format cl:nil "std_msgs/Header header~%Recognition[] recognitions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: image_recognition_msgs/Recognition~%# A recognition in an image region of interest (roi) that is described by a~%# categorical distribution that contains of labels with their probabilities.~%# An optional group_id can be specified to group recognitions together~%~%CategoricalDistribution categorical_distribution~%sensor_msgs/RegionOfInterest roi~%uint32 group_id~%================================================================================~%MSG: image_recognition_msgs/CategoricalDistribution~%# Categorical distribution; if the probability of an element is below the unknown~%# probability, it can be classified as unknown~%CategoryProbability[] probabilities~%float32 unknown_probability~%~%================================================================================~%MSG: image_recognition_msgs/CategoryProbability~%# A category (label) with its probability (probability) that ranges from 0..1~%string  label~%float32 probability~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognitions>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recognitions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognitions>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognitions
    (cl:cons ':header (header msg))
    (cl:cons ':recognitions (recognitions msg))
))
