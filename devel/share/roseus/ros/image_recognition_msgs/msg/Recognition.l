;; Auto-generated. Do not edit!


(when (boundp 'image_recognition_msgs::Recognition)
  (if (not (find-package "IMAGE_RECOGNITION_MSGS"))
    (make-package "IMAGE_RECOGNITION_MSGS"))
  (shadow 'Recognition (find-package "IMAGE_RECOGNITION_MSGS")))
(unless (find-package "IMAGE_RECOGNITION_MSGS::RECOGNITION")
  (make-package "IMAGE_RECOGNITION_MSGS::RECOGNITION"))

(in-package "ROS")
;;//! \htmlinclude Recognition.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass image_recognition_msgs::Recognition
  :super ros::object
  :slots (_categorical_distribution _roi _group_id ))

(defmethod image_recognition_msgs::Recognition
  (:init
   (&key
    ((:categorical_distribution __categorical_distribution) (instance image_recognition_msgs::CategoricalDistribution :init))
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    ((:group_id __group_id) 0)
    )
   (send-super :init)
   (setq _categorical_distribution __categorical_distribution)
   (setq _roi __roi)
   (setq _group_id (round __group_id))
   self)
  (:categorical_distribution
   (&rest __categorical_distribution)
   (if (keywordp (car __categorical_distribution))
       (send* _categorical_distribution __categorical_distribution)
     (progn
       (if __categorical_distribution (setq _categorical_distribution (car __categorical_distribution)))
       _categorical_distribution)))
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:group_id
   (&optional __group_id)
   (if __group_id (setq _group_id __group_id)) _group_id)
  (:serialization-length
   ()
   (+
    ;; image_recognition_msgs/CategoricalDistribution _categorical_distribution
    (send _categorical_distribution :serialization-length)
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ;; uint32 _group_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; image_recognition_msgs/CategoricalDistribution _categorical_distribution
       (send _categorical_distribution :serialize s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;; uint32 _group_id
       (write-long _group_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; image_recognition_msgs/CategoricalDistribution _categorical_distribution
     (send _categorical_distribution :deserialize buf ptr-) (incf ptr- (send _categorical_distribution :serialization-length))
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; uint32 _group_id
     (setq _group_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get image_recognition_msgs::Recognition :md5sum-) "27e1989277b4d204ee94a720e6ebc927")
(setf (get image_recognition_msgs::Recognition :datatype-) "image_recognition_msgs/Recognition")
(setf (get image_recognition_msgs::Recognition :definition-)
      "# A recognition in an image region of interest (roi) that is described by a
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



(provide :image_recognition_msgs/Recognition "27e1989277b4d204ee94a720e6ebc927")


