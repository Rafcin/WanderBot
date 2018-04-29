;; Auto-generated. Do not edit!


(when (boundp 'image_recognition_msgs::GetFaceProperties)
  (if (not (find-package "IMAGE_RECOGNITION_MSGS"))
    (make-package "IMAGE_RECOGNITION_MSGS"))
  (shadow 'GetFaceProperties (find-package "IMAGE_RECOGNITION_MSGS")))
(unless (find-package "IMAGE_RECOGNITION_MSGS::GETFACEPROPERTIES")
  (make-package "IMAGE_RECOGNITION_MSGS::GETFACEPROPERTIES"))
(unless (find-package "IMAGE_RECOGNITION_MSGS::GETFACEPROPERTIESREQUEST")
  (make-package "IMAGE_RECOGNITION_MSGS::GETFACEPROPERTIESREQUEST"))
(unless (find-package "IMAGE_RECOGNITION_MSGS::GETFACEPROPERTIESRESPONSE")
  (make-package "IMAGE_RECOGNITION_MSGS::GETFACEPROPERTIESRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass image_recognition_msgs::GetFacePropertiesRequest
  :super ros::object
  :slots (_face_image_array ))

(defmethod image_recognition_msgs::GetFacePropertiesRequest
  (:init
   (&key
    ((:face_image_array __face_image_array) (let (r) (dotimes (i 0) (push (instance sensor_msgs::Image :init) r)) r))
    )
   (send-super :init)
   (setq _face_image_array __face_image_array)
   self)
  (:face_image_array
   (&rest __face_image_array)
   (if (keywordp (car __face_image_array))
       (send* _face_image_array __face_image_array)
     (progn
       (if __face_image_array (setq _face_image_array (car __face_image_array)))
       _face_image_array)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image[] _face_image_array
    (apply #'+ (send-all _face_image_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image[] _face_image_array
     (write-long (length _face_image_array) s)
     (dolist (elem _face_image_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image[] _face_image_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _face_image_array (let (r) (dotimes (i n) (push (instance sensor_msgs::Image :init) r)) r))
     (dolist (elem- _face_image_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass image_recognition_msgs::GetFacePropertiesResponse
  :super ros::object
  :slots (_properties_array ))

(defmethod image_recognition_msgs::GetFacePropertiesResponse
  (:init
   (&key
    ((:properties_array __properties_array) (let (r) (dotimes (i 0) (push (instance image_recognition_msgs::FaceProperties :init) r)) r))
    )
   (send-super :init)
   (setq _properties_array __properties_array)
   self)
  (:properties_array
   (&rest __properties_array)
   (if (keywordp (car __properties_array))
       (send* _properties_array __properties_array)
     (progn
       (if __properties_array (setq _properties_array (car __properties_array)))
       _properties_array)))
  (:serialization-length
   ()
   (+
    ;; image_recognition_msgs/FaceProperties[] _properties_array
    (apply #'+ (send-all _properties_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; image_recognition_msgs/FaceProperties[] _properties_array
     (write-long (length _properties_array) s)
     (dolist (elem _properties_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; image_recognition_msgs/FaceProperties[] _properties_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _properties_array (let (r) (dotimes (i n) (push (instance image_recognition_msgs::FaceProperties :init) r)) r))
     (dolist (elem- _properties_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass image_recognition_msgs::GetFaceProperties
  :super ros::object
  :slots ())

(setf (get image_recognition_msgs::GetFaceProperties :md5sum-) "dafbff820ead30e2dcba0dd56efd35dd")
(setf (get image_recognition_msgs::GetFaceProperties :datatype-) "image_recognition_msgs/GetFaceProperties")
(setf (get image_recognition_msgs::GetFaceProperties :request) image_recognition_msgs::GetFacePropertiesRequest)
(setf (get image_recognition_msgs::GetFaceProperties :response) image_recognition_msgs::GetFacePropertiesResponse)

(defmethod image_recognition_msgs::GetFacePropertiesRequest
  (:response () (instance image_recognition_msgs::GetFacePropertiesResponse :init)))

(setf (get image_recognition_msgs::GetFacePropertiesRequest :md5sum-) "dafbff820ead30e2dcba0dd56efd35dd")
(setf (get image_recognition_msgs::GetFacePropertiesRequest :datatype-) "image_recognition_msgs/GetFacePropertiesRequest")
(setf (get image_recognition_msgs::GetFacePropertiesRequest :definition-)
      "

sensor_msgs/Image[] face_image_array

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
---
FaceProperties[] properties_array


================================================================================
MSG: image_recognition_msgs/FaceProperties
# Face properties

# Gender definitions
uint8 MALE=0
uint8 FEMALE=1

# Gender, either MALE of FEMALE
uint8 gender

# The age of the face
")

(setf (get image_recognition_msgs::GetFacePropertiesResponse :md5sum-) "dafbff820ead30e2dcba0dd56efd35dd")
(setf (get image_recognition_msgs::GetFacePropertiesResponse :datatype-) "image_recognition_msgs/GetFacePropertiesResponse")
(setf (get image_recognition_msgs::GetFacePropertiesResponse :definition-)
      "

sensor_msgs/Image[] face_image_array

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
---
FaceProperties[] properties_array


================================================================================
MSG: image_recognition_msgs/FaceProperties
# Face properties

# Gender definitions
uint8 MALE=0
uint8 FEMALE=1

# Gender, either MALE of FEMALE
uint8 gender

# The age of the face
")



(provide :image_recognition_msgs/GetFaceProperties "dafbff820ead30e2dcba0dd56efd35dd")


