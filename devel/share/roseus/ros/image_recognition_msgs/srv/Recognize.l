;; Auto-generated. Do not edit!


(when (boundp 'image_recognition_msgs::Recognize)
  (if (not (find-package "IMAGE_RECOGNITION_MSGS"))
    (make-package "IMAGE_RECOGNITION_MSGS"))
  (shadow 'Recognize (find-package "IMAGE_RECOGNITION_MSGS")))
(unless (find-package "IMAGE_RECOGNITION_MSGS::RECOGNIZE")
  (make-package "IMAGE_RECOGNITION_MSGS::RECOGNIZE"))
(unless (find-package "IMAGE_RECOGNITION_MSGS::RECOGNIZEREQUEST")
  (make-package "IMAGE_RECOGNITION_MSGS::RECOGNIZEREQUEST"))
(unless (find-package "IMAGE_RECOGNITION_MSGS::RECOGNIZERESPONSE")
  (make-package "IMAGE_RECOGNITION_MSGS::RECOGNIZERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass image_recognition_msgs::RecognizeRequest
  :super ros::object
  :slots (_image ))

(defmethod image_recognition_msgs::RecognizeRequest
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass image_recognition_msgs::RecognizeResponse
  :super ros::object
  :slots (_recognitions ))

(defmethod image_recognition_msgs::RecognizeResponse
  (:init
   (&key
    ((:recognitions __recognitions) (let (r) (dotimes (i 0) (push (instance image_recognition_msgs::Recognition :init) r)) r))
    )
   (send-super :init)
   (setq _recognitions __recognitions)
   self)
  (:recognitions
   (&rest __recognitions)
   (if (keywordp (car __recognitions))
       (send* _recognitions __recognitions)
     (progn
       (if __recognitions (setq _recognitions (car __recognitions)))
       _recognitions)))
  (:serialization-length
   ()
   (+
    ;; image_recognition_msgs/Recognition[] _recognitions
    (apply #'+ (send-all _recognitions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; image_recognition_msgs/Recognition[] _recognitions
     (write-long (length _recognitions) s)
     (dolist (elem _recognitions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; image_recognition_msgs/Recognition[] _recognitions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _recognitions (let (r) (dotimes (i n) (push (instance image_recognition_msgs::Recognition :init) r)) r))
     (dolist (elem- _recognitions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass image_recognition_msgs::Recognize
  :super ros::object
  :slots ())

(setf (get image_recognition_msgs::Recognize :md5sum-) "bc43416498cf4305105098e8e66a9de0")
(setf (get image_recognition_msgs::Recognize :datatype-) "image_recognition_msgs/Recognize")
(setf (get image_recognition_msgs::Recognize :request) image_recognition_msgs::RecognizeRequest)
(setf (get image_recognition_msgs::Recognize :response) image_recognition_msgs::RecognizeResponse)

(defmethod image_recognition_msgs::RecognizeRequest
  (:response () (instance image_recognition_msgs::RecognizeResponse :init)))

(setf (get image_recognition_msgs::RecognizeRequest :md5sum-) "bc43416498cf4305105098e8e66a9de0")
(setf (get image_recognition_msgs::RecognizeRequest :datatype-) "image_recognition_msgs/RecognizeRequest")
(setf (get image_recognition_msgs::RecognizeRequest :definition-)
      "

sensor_msgs/Image image

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
Recognition[] recognitions


================================================================================
MSG: image_recognition_msgs/Recognition
# A recognition in an image region of interest (roi) that is described by a
# categorical distribution that contains of labels with their probabilities.
# An optional group_id can be specified to group recognitions together

CategoricalDistribution categorical_distribution
sensor_msgs/RegionOfInterest roi
uint32 group_id
================================================================================
MSG: image_recognition_msgs/CategoricalDistribution
# Categorical distribution; if the probability of an element is below the unknown
# probability, it can be classified as unknown
CategoryProbability[] probabilities
float32 unknown_probability

================================================================================
MSG: image_recognition_msgs/CategoryProbability
# A category (label) with its probability (probability) that ranges from 0..1
string  label
float32 probability

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
")

(setf (get image_recognition_msgs::RecognizeResponse :md5sum-) "bc43416498cf4305105098e8e66a9de0")
(setf (get image_recognition_msgs::RecognizeResponse :datatype-) "image_recognition_msgs/RecognizeResponse")
(setf (get image_recognition_msgs::RecognizeResponse :definition-)
      "

sensor_msgs/Image image

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
Recognition[] recognitions


================================================================================
MSG: image_recognition_msgs/Recognition
# A recognition in an image region of interest (roi) that is described by a
# categorical distribution that contains of labels with their probabilities.
# An optional group_id can be specified to group recognitions together

CategoricalDistribution categorical_distribution
sensor_msgs/RegionOfInterest roi
uint32 group_id
================================================================================
MSG: image_recognition_msgs/CategoricalDistribution
# Categorical distribution; if the probability of an element is below the unknown
# probability, it can be classified as unknown
CategoryProbability[] probabilities
float32 unknown_probability

================================================================================
MSG: image_recognition_msgs/CategoryProbability
# A category (label) with its probability (probability) that ranges from 0..1
string  label
float32 probability

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
")



(provide :image_recognition_msgs/Recognize "bc43416498cf4305105098e8e66a9de0")


