;; Auto-generated. Do not edit!


(when (boundp 'image_recognition_msgs::CategoryProbability)
  (if (not (find-package "IMAGE_RECOGNITION_MSGS"))
    (make-package "IMAGE_RECOGNITION_MSGS"))
  (shadow 'CategoryProbability (find-package "IMAGE_RECOGNITION_MSGS")))
(unless (find-package "IMAGE_RECOGNITION_MSGS::CATEGORYPROBABILITY")
  (make-package "IMAGE_RECOGNITION_MSGS::CATEGORYPROBABILITY"))

(in-package "ROS")
;;//! \htmlinclude CategoryProbability.msg.html


(defclass image_recognition_msgs::CategoryProbability
  :super ros::object
  :slots (_label _probability ))

(defmethod image_recognition_msgs::CategoryProbability
  (:init
   (&key
    ((:label __label) "")
    ((:probability __probability) 0.0)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _probability (float __probability))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; float32 _probability
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get image_recognition_msgs::CategoryProbability :md5sum-) "eb7ef1e65c230d37e0b3ceae14668372")
(setf (get image_recognition_msgs::CategoryProbability :datatype-) "image_recognition_msgs/CategoryProbability")
(setf (get image_recognition_msgs::CategoryProbability :definition-)
      "# A category (label) with its probability (probability) that ranges from 0..1
string  label
float32 probability

")



(provide :image_recognition_msgs/CategoryProbability "eb7ef1e65c230d37e0b3ceae14668372")


