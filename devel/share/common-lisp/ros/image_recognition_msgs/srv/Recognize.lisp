; Auto-generated. Do not edit!


(cl:in-package image_recognition_msgs-srv)


;//! \htmlinclude Recognize-request.msg.html

(cl:defclass <Recognize-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass Recognize-request (<Recognize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-srv:<Recognize-request> is deprecated: use image_recognition_msgs-srv:Recognize-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <Recognize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-srv:image-val is deprecated.  Use image_recognition_msgs-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognize-request>) ostream)
  "Serializes a message object of type '<Recognize-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognize-request>) istream)
  "Deserializes a message object of type '<Recognize-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognize-request>)))
  "Returns string type for a service object of type '<Recognize-request>"
  "image_recognition_msgs/RecognizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognize-request)))
  "Returns string type for a service object of type 'Recognize-request"
  "image_recognition_msgs/RecognizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognize-request>)))
  "Returns md5sum for a message object of type '<Recognize-request>"
  "bc43416498cf4305105098e8e66a9de0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognize-request)))
  "Returns md5sum for a message object of type 'Recognize-request"
  "bc43416498cf4305105098e8e66a9de0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognize-request>)))
  "Returns full string definition for message of type '<Recognize-request>"
  (cl:format cl:nil "~%~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognize-request)))
  "Returns full string definition for message of type 'Recognize-request"
  (cl:format cl:nil "~%~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognize-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognize-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude Recognize-response.msg.html

(cl:defclass <Recognize-response> (roslisp-msg-protocol:ros-message)
  ((recognitions
    :reader recognitions
    :initarg :recognitions
    :type (cl:vector image_recognition_msgs-msg:Recognition)
   :initform (cl:make-array 0 :element-type 'image_recognition_msgs-msg:Recognition :initial-element (cl:make-instance 'image_recognition_msgs-msg:Recognition))))
)

(cl:defclass Recognize-response (<Recognize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-srv:<Recognize-response> is deprecated: use image_recognition_msgs-srv:Recognize-response instead.")))

(cl:ensure-generic-function 'recognitions-val :lambda-list '(m))
(cl:defmethod recognitions-val ((m <Recognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-srv:recognitions-val is deprecated.  Use image_recognition_msgs-srv:recognitions instead.")
  (recognitions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognize-response>) ostream)
  "Serializes a message object of type '<Recognize-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recognitions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'recognitions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognize-response>) istream)
  "Deserializes a message object of type '<Recognize-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognize-response>)))
  "Returns string type for a service object of type '<Recognize-response>"
  "image_recognition_msgs/RecognizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognize-response)))
  "Returns string type for a service object of type 'Recognize-response"
  "image_recognition_msgs/RecognizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognize-response>)))
  "Returns md5sum for a message object of type '<Recognize-response>"
  "bc43416498cf4305105098e8e66a9de0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognize-response)))
  "Returns md5sum for a message object of type 'Recognize-response"
  "bc43416498cf4305105098e8e66a9de0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognize-response>)))
  "Returns full string definition for message of type '<Recognize-response>"
  (cl:format cl:nil "Recognition[] recognitions~%~%~%================================================================================~%MSG: image_recognition_msgs/Recognition~%# A recognition in an image region of interest (roi) that is described by a~%# categorical distribution that contains of labels with their probabilities.~%# An optional group_id can be specified to group recognitions together~%~%CategoricalDistribution categorical_distribution~%sensor_msgs/RegionOfInterest roi~%uint32 group_id~%================================================================================~%MSG: image_recognition_msgs/CategoricalDistribution~%# Categorical distribution; if the probability of an element is below the unknown~%# probability, it can be classified as unknown~%CategoryProbability[] probabilities~%float32 unknown_probability~%~%================================================================================~%MSG: image_recognition_msgs/CategoryProbability~%# A category (label) with its probability (probability) that ranges from 0..1~%string  label~%float32 probability~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognize-response)))
  "Returns full string definition for message of type 'Recognize-response"
  (cl:format cl:nil "Recognition[] recognitions~%~%~%================================================================================~%MSG: image_recognition_msgs/Recognition~%# A recognition in an image region of interest (roi) that is described by a~%# categorical distribution that contains of labels with their probabilities.~%# An optional group_id can be specified to group recognitions together~%~%CategoricalDistribution categorical_distribution~%sensor_msgs/RegionOfInterest roi~%uint32 group_id~%================================================================================~%MSG: image_recognition_msgs/CategoricalDistribution~%# Categorical distribution; if the probability of an element is below the unknown~%# probability, it can be classified as unknown~%CategoryProbability[] probabilities~%float32 unknown_probability~%~%================================================================================~%MSG: image_recognition_msgs/CategoryProbability~%# A category (label) with its probability (probability) that ranges from 0..1~%string  label~%float32 probability~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognize-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recognitions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognize-response
    (cl:cons ':recognitions (recognitions msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Recognize)))
  'Recognize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Recognize)))
  'Recognize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognize)))
  "Returns string type for a service object of type '<Recognize>"
  "image_recognition_msgs/Recognize")