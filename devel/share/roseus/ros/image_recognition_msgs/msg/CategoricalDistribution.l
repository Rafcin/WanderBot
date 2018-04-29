;; Auto-generated. Do not edit!


(when (boundp 'image_recognition_msgs::CategoricalDistribution)
  (if (not (find-package "IMAGE_RECOGNITION_MSGS"))
    (make-package "IMAGE_RECOGNITION_MSGS"))
  (shadow 'CategoricalDistribution (find-package "IMAGE_RECOGNITION_MSGS")))
(unless (find-package "IMAGE_RECOGNITION_MSGS::CATEGORICALDISTRIBUTION")
  (make-package "IMAGE_RECOGNITION_MSGS::CATEGORICALDISTRIBUTION"))

(in-package "ROS")
;;//! \htmlinclude CategoricalDistribution.msg.html


(defclass image_recognition_msgs::CategoricalDistribution
  :super ros::object
  :slots (_probabilities _unknown_probability ))

(defmethod image_recognition_msgs::CategoricalDistribution
  (:init
   (&key
    ((:probabilities __probabilities) (let (r) (dotimes (i 0) (push (instance image_recognition_msgs::CategoryProbability :init) r)) r))
    ((:unknown_probability __unknown_probability) 0.0)
    )
   (send-super :init)
   (setq _probabilities __probabilities)
   (setq _unknown_probability (float __unknown_probability))
   self)
  (:probabilities
   (&rest __probabilities)
   (if (keywordp (car __probabilities))
       (send* _probabilities __probabilities)
     (progn
       (if __probabilities (setq _probabilities (car __probabilities)))
       _probabilities)))
  (:unknown_probability
   (&optional __unknown_probability)
   (if __unknown_probability (setq _unknown_probability __unknown_probability)) _unknown_probability)
  (:serialization-length
   ()
   (+
    ;; image_recognition_msgs/CategoryProbability[] _probabilities
    (apply #'+ (send-all _probabilities :serialization-length)) 4
    ;; float32 _unknown_probability
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; image_recognition_msgs/CategoryProbability[] _probabilities
     (write-long (length _probabilities) s)
     (dolist (elem _probabilities)
       (send elem :serialize s)
       )
     ;; float32 _unknown_probability
       (sys::poke _unknown_probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; image_recognition_msgs/CategoryProbability[] _probabilities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _probabilities (let (r) (dotimes (i n) (push (instance image_recognition_msgs::CategoryProbability :init) r)) r))
     (dolist (elem- _probabilities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _unknown_probability
     (setq _unknown_probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get image_recognition_msgs::CategoricalDistribution :md5sum-) "33d3c52e53151a3b74f712a5f80b67be")
(setf (get image_recognition_msgs::CategoricalDistribution :datatype-) "image_recognition_msgs/CategoricalDistribution")
(setf (get image_recognition_msgs::CategoricalDistribution :definition-)
      "# Categorical distribution; if the probability of an element is below the unknown
# probability, it can be classified as unknown
CategoryProbability[] probabilities
float32 unknown_probability

================================================================================
MSG: image_recognition_msgs/CategoryProbability
# A category (label) with its probability (probability) that ranges from 0..1
string  label
float32 probability

")



(provide :image_recognition_msgs/CategoricalDistribution "33d3c52e53151a3b74f712a5f80b67be")


