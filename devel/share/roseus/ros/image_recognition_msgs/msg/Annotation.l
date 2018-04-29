;; Auto-generated. Do not edit!


(when (boundp 'image_recognition_msgs::Annotation)
  (if (not (find-package "IMAGE_RECOGNITION_MSGS"))
    (make-package "IMAGE_RECOGNITION_MSGS"))
  (shadow 'Annotation (find-package "IMAGE_RECOGNITION_MSGS")))
(unless (find-package "IMAGE_RECOGNITION_MSGS::ANNOTATION")
  (make-package "IMAGE_RECOGNITION_MSGS::ANNOTATION"))

(in-package "ROS")
;;//! \htmlinclude Annotation.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass image_recognition_msgs::Annotation
  :super ros::object
  :slots (_label _roi ))

(defmethod image_recognition_msgs::Annotation
  (:init
   (&key
    ((:label __label) "")
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _roi __roi)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(setf (get image_recognition_msgs::Annotation :md5sum-) "58cf75ea3b312a76df6febf6296b89fb")
(setf (get image_recognition_msgs::Annotation :datatype-) "image_recognition_msgs/Annotation")
(setf (get image_recognition_msgs::Annotation :definition-)
      "# This message describes an annotation (label) of a specific ROI (roi)
string label
sensor_msgs/RegionOfInterest roi

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



(provide :image_recognition_msgs/Annotation "58cf75ea3b312a76df6febf6296b89fb")


