;; Auto-generated. Do not edit!


(when (boundp 'image_recognition_msgs::FaceProperties)
  (if (not (find-package "IMAGE_RECOGNITION_MSGS"))
    (make-package "IMAGE_RECOGNITION_MSGS"))
  (shadow 'FaceProperties (find-package "IMAGE_RECOGNITION_MSGS")))
(unless (find-package "IMAGE_RECOGNITION_MSGS::FACEPROPERTIES")
  (make-package "IMAGE_RECOGNITION_MSGS::FACEPROPERTIES"))

(in-package "ROS")
;;//! \htmlinclude FaceProperties.msg.html


(intern "*MALE*" (find-package "IMAGE_RECOGNITION_MSGS::FACEPROPERTIES"))
(shadow '*MALE* (find-package "IMAGE_RECOGNITION_MSGS::FACEPROPERTIES"))
(defconstant image_recognition_msgs::FaceProperties::*MALE* 0)
(intern "*FEMALE*" (find-package "IMAGE_RECOGNITION_MSGS::FACEPROPERTIES"))
(shadow '*FEMALE* (find-package "IMAGE_RECOGNITION_MSGS::FACEPROPERTIES"))
(defconstant image_recognition_msgs::FaceProperties::*FEMALE* 1)
(defclass image_recognition_msgs::FaceProperties
  :super ros::object
  :slots (_gender _age ))

(defmethod image_recognition_msgs::FaceProperties
  (:init
   (&key
    ((:gender __gender) 0)
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _gender (round __gender))
   (setq _age (round __age))
   self)
  (:gender
   (&optional __gender)
   (if __gender (setq _gender __gender)) _gender)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; uint8 _gender
    1
    ;; uint8 _age
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gender
       (write-byte _gender s)
     ;; uint8 _age
       (write-byte _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gender
     (setq _gender (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get image_recognition_msgs::FaceProperties :md5sum-) "0509e719654f194b1f2f178434bcb902")
(setf (get image_recognition_msgs::FaceProperties :datatype-) "image_recognition_msgs/FaceProperties")
(setf (get image_recognition_msgs::FaceProperties :definition-)
      "# Face properties

# Gender definitions
uint8 MALE=0
uint8 FEMALE=1

# Gender, either MALE of FEMALE
uint8 gender

# The age of the face
uint8 age
")



(provide :image_recognition_msgs/FaceProperties "0509e719654f194b1f2f178434bcb902")


