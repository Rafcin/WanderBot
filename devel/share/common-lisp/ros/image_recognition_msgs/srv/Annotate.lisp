; Auto-generated. Do not edit!


(cl:in-package image_recognition_msgs-srv)


;//! \htmlinclude Annotate-request.msg.html

(cl:defclass <Annotate-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (annotations
    :reader annotations
    :initarg :annotations
    :type (cl:vector image_recognition_msgs-msg:Annotation)
   :initform (cl:make-array 0 :element-type 'image_recognition_msgs-msg:Annotation :initial-element (cl:make-instance 'image_recognition_msgs-msg:Annotation))))
)

(cl:defclass Annotate-request (<Annotate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Annotate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Annotate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-srv:<Annotate-request> is deprecated: use image_recognition_msgs-srv:Annotate-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <Annotate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-srv:image-val is deprecated.  Use image_recognition_msgs-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'annotations-val :lambda-list '(m))
(cl:defmethod annotations-val ((m <Annotate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-srv:annotations-val is deprecated.  Use image_recognition_msgs-srv:annotations instead.")
  (annotations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Annotate-request>) ostream)
  "Serializes a message object of type '<Annotate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Annotate-request>) istream)
  "Deserializes a message object of type '<Annotate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'annotations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'annotations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'image_recognition_msgs-msg:Annotation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Annotate-request>)))
  "Returns string type for a service object of type '<Annotate-request>"
  "image_recognition_msgs/AnnotateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Annotate-request)))
  "Returns string type for a service object of type 'Annotate-request"
  "image_recognition_msgs/AnnotateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Annotate-request>)))
  "Returns md5sum for a message object of type '<Annotate-request>"
  "8cc91912a5e6a23decc502ffc5dae050")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Annotate-request)))
  "Returns md5sum for a message object of type 'Annotate-request"
  "8cc91912a5e6a23decc502ffc5dae050")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Annotate-request>)))
  "Returns full string definition for message of type '<Annotate-request>"
  (cl:format cl:nil "~%~%sensor_msgs/Image image~%Annotation[] annotations~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: image_recognition_msgs/Annotation~%# This message describes an annotation (label) of a specific ROI (roi)~%string label~%sensor_msgs/RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Annotate-request)))
  "Returns full string definition for message of type 'Annotate-request"
  (cl:format cl:nil "~%~%sensor_msgs/Image image~%Annotation[] annotations~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: image_recognition_msgs/Annotation~%# This message describes an annotation (label) of a specific ROI (roi)~%string label~%sensor_msgs/RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Annotate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Annotate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Annotate-request
    (cl:cons ':image (image msg))
    (cl:cons ':annotations (annotations msg))
))
;//! \htmlinclude Annotate-response.msg.html

(cl:defclass <Annotate-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Annotate-response (<Annotate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Annotate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Annotate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-srv:<Annotate-response> is deprecated: use image_recognition_msgs-srv:Annotate-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Annotate-response>) ostream)
  "Serializes a message object of type '<Annotate-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Annotate-response>) istream)
  "Deserializes a message object of type '<Annotate-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Annotate-response>)))
  "Returns string type for a service object of type '<Annotate-response>"
  "image_recognition_msgs/AnnotateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Annotate-response)))
  "Returns string type for a service object of type 'Annotate-response"
  "image_recognition_msgs/AnnotateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Annotate-response>)))
  "Returns md5sum for a message object of type '<Annotate-response>"
  "8cc91912a5e6a23decc502ffc5dae050")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Annotate-response)))
  "Returns md5sum for a message object of type 'Annotate-response"
  "8cc91912a5e6a23decc502ffc5dae050")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Annotate-response>)))
  "Returns full string definition for message of type '<Annotate-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Annotate-response)))
  "Returns full string definition for message of type 'Annotate-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Annotate-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Annotate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Annotate-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Annotate)))
  'Annotate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Annotate)))
  'Annotate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Annotate)))
  "Returns string type for a service object of type '<Annotate>"
  "image_recognition_msgs/Annotate")