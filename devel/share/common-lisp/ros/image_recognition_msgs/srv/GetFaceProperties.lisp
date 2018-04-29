; Auto-generated. Do not edit!


(cl:in-package image_recognition_msgs-srv)


;//! \htmlinclude GetFaceProperties-request.msg.html

(cl:defclass <GetFaceProperties-request> (roslisp-msg-protocol:ros-message)
  ((face_image_array
    :reader face_image_array
    :initarg :face_image_array
    :type (cl:vector sensor_msgs-msg:Image)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:Image :initial-element (cl:make-instance 'sensor_msgs-msg:Image))))
)

(cl:defclass GetFaceProperties-request (<GetFaceProperties-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFaceProperties-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFaceProperties-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-srv:<GetFaceProperties-request> is deprecated: use image_recognition_msgs-srv:GetFaceProperties-request instead.")))

(cl:ensure-generic-function 'face_image_array-val :lambda-list '(m))
(cl:defmethod face_image_array-val ((m <GetFaceProperties-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-srv:face_image_array-val is deprecated.  Use image_recognition_msgs-srv:face_image_array instead.")
  (face_image_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFaceProperties-request>) ostream)
  "Serializes a message object of type '<GetFaceProperties-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'face_image_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'face_image_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFaceProperties-request>) istream)
  "Deserializes a message object of type '<GetFaceProperties-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'face_image_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'face_image_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:Image))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFaceProperties-request>)))
  "Returns string type for a service object of type '<GetFaceProperties-request>"
  "image_recognition_msgs/GetFacePropertiesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFaceProperties-request)))
  "Returns string type for a service object of type 'GetFaceProperties-request"
  "image_recognition_msgs/GetFacePropertiesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFaceProperties-request>)))
  "Returns md5sum for a message object of type '<GetFaceProperties-request>"
  "dafbff820ead30e2dcba0dd56efd35dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFaceProperties-request)))
  "Returns md5sum for a message object of type 'GetFaceProperties-request"
  "dafbff820ead30e2dcba0dd56efd35dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFaceProperties-request>)))
  "Returns full string definition for message of type '<GetFaceProperties-request>"
  (cl:format cl:nil "~%~%sensor_msgs/Image[] face_image_array~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFaceProperties-request)))
  "Returns full string definition for message of type 'GetFaceProperties-request"
  (cl:format cl:nil "~%~%sensor_msgs/Image[] face_image_array~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFaceProperties-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'face_image_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFaceProperties-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFaceProperties-request
    (cl:cons ':face_image_array (face_image_array msg))
))
;//! \htmlinclude GetFaceProperties-response.msg.html

(cl:defclass <GetFaceProperties-response> (roslisp-msg-protocol:ros-message)
  ((properties_array
    :reader properties_array
    :initarg :properties_array
    :type (cl:vector image_recognition_msgs-msg:FaceProperties)
   :initform (cl:make-array 0 :element-type 'image_recognition_msgs-msg:FaceProperties :initial-element (cl:make-instance 'image_recognition_msgs-msg:FaceProperties))))
)

(cl:defclass GetFaceProperties-response (<GetFaceProperties-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFaceProperties-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFaceProperties-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-srv:<GetFaceProperties-response> is deprecated: use image_recognition_msgs-srv:GetFaceProperties-response instead.")))

(cl:ensure-generic-function 'properties_array-val :lambda-list '(m))
(cl:defmethod properties_array-val ((m <GetFaceProperties-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-srv:properties_array-val is deprecated.  Use image_recognition_msgs-srv:properties_array instead.")
  (properties_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFaceProperties-response>) ostream)
  "Serializes a message object of type '<GetFaceProperties-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'properties_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'properties_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFaceProperties-response>) istream)
  "Deserializes a message object of type '<GetFaceProperties-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'properties_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'properties_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'image_recognition_msgs-msg:FaceProperties))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFaceProperties-response>)))
  "Returns string type for a service object of type '<GetFaceProperties-response>"
  "image_recognition_msgs/GetFacePropertiesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFaceProperties-response)))
  "Returns string type for a service object of type 'GetFaceProperties-response"
  "image_recognition_msgs/GetFacePropertiesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFaceProperties-response>)))
  "Returns md5sum for a message object of type '<GetFaceProperties-response>"
  "dafbff820ead30e2dcba0dd56efd35dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFaceProperties-response)))
  "Returns md5sum for a message object of type 'GetFaceProperties-response"
  "dafbff820ead30e2dcba0dd56efd35dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFaceProperties-response>)))
  "Returns full string definition for message of type '<GetFaceProperties-response>"
  (cl:format cl:nil "FaceProperties[] properties_array~%~%~%================================================================================~%MSG: image_recognition_msgs/FaceProperties~%# Face properties~%~%# Gender definitions~%uint8 MALE=0~%uint8 FEMALE=1~%~%# Gender, either MALE of FEMALE~%uint8 gender~%~%# The age of the face~%uint8 age~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFaceProperties-response)))
  "Returns full string definition for message of type 'GetFaceProperties-response"
  (cl:format cl:nil "FaceProperties[] properties_array~%~%~%================================================================================~%MSG: image_recognition_msgs/FaceProperties~%# Face properties~%~%# Gender definitions~%uint8 MALE=0~%uint8 FEMALE=1~%~%# Gender, either MALE of FEMALE~%uint8 gender~%~%# The age of the face~%uint8 age~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFaceProperties-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'properties_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFaceProperties-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFaceProperties-response
    (cl:cons ':properties_array (properties_array msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFaceProperties)))
  'GetFaceProperties-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFaceProperties)))
  'GetFaceProperties-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFaceProperties)))
  "Returns string type for a service object of type '<GetFaceProperties>"
  "image_recognition_msgs/GetFaceProperties")