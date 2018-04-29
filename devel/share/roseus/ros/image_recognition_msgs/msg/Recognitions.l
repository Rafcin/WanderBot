;; Auto-generated. Do not edit!


(when (boundp 'image_recognition_msgs::Recognitions)
  (if (not (find-package "IMAGE_RECOGNITION_MSGS"))
    (make-package "IMAGE_RECOGNITION_MSGS"))
  (shadow 'Recognitions (find-package "IMAGE_RECOGNITION_MSGS")))
(unless (find-package "IMAGE_RECOGNITION_MSGS::RECOGNITIONS")
  (make-package "IMAGE_RECOGNITION_MSGS::RECOGNITIONS"))

(in-package "ROS")
;;//! \htmlinclude Recognitions.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass image_recognition_msgs::Recognitions
  :super ros::object
  :slots (_header _recognitions ))

(defmethod image_recognition_msgs::Recognitions
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:recognitions __recognitions) (let (r) (dotimes (i 0) (push (instance image_recognition_msgs::Recognition :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _recognitions __recognitions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; image_recognition_msgs/Recognition[] _recognitions
    (apply #'+ (send-all _recognitions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; image_recognition_msgs/Recognition[] _recognitions
     (write-long (length _recognitions) s)
     (dolist (elem _recognitions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
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

(setf (get image_recognition_msgs::Recognitions :md5sum-) "8ecb10adb1c61d004d2e3c9a37418093")
(setf (get image_recognition_msgs::Recognitions :datatype-) "image_recognition_msgs/Recognitions")
(setf (get image_recognition_msgs::Recognitions :definition-)
      "std_msgs/Header header
Recognition[] recognitions

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



(provide :image_recognition_msgs/Recognitions "8ecb10adb1c61d004d2e3c9a37418093")


