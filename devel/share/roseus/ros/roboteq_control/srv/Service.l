;; Auto-generated. Do not edit!


(when (boundp 'roboteq_control::Service)
  (if (not (find-package "ROBOTEQ_CONTROL"))
    (make-package "ROBOTEQ_CONTROL"))
  (shadow 'Service (find-package "ROBOTEQ_CONTROL")))
(unless (find-package "ROBOTEQ_CONTROL::SERVICE")
  (make-package "ROBOTEQ_CONTROL::SERVICE"))
(unless (find-package "ROBOTEQ_CONTROL::SERVICEREQUEST")
  (make-package "ROBOTEQ_CONTROL::SERVICEREQUEST"))
(unless (find-package "ROBOTEQ_CONTROL::SERVICERESPONSE")
  (make-package "ROBOTEQ_CONTROL::SERVICERESPONSE"))

(in-package "ROS")





(defclass roboteq_control::ServiceRequest
  :super ros::object
  :slots (_service ))

(defmethod roboteq_control::ServiceRequest
  (:init
   (&key
    ((:service __service) "")
    )
   (send-super :init)
   (setq _service (string __service))
   self)
  (:service
   (&optional __service)
   (if __service (setq _service __service)) _service)
  (:serialization-length
   ()
   (+
    ;; string _service
    4 (length _service)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service
       (write-long (length _service) s) (princ _service s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboteq_control::ServiceResponse
  :super ros::object
  :slots (_information ))

(defmethod roboteq_control::ServiceResponse
  (:init
   (&key
    ((:information __information) "")
    )
   (send-super :init)
   (setq _information (string __information))
   self)
  (:information
   (&optional __information)
   (if __information (setq _information __information)) _information)
  (:serialization-length
   ()
   (+
    ;; string _information
    4 (length _information)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _information
       (write-long (length _information) s) (princ _information s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _information
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _information (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboteq_control::Service
  :super ros::object
  :slots ())

(setf (get roboteq_control::Service :md5sum-) "e6679107a9158ba5cdd48d614a8c1546")
(setf (get roboteq_control::Service :datatype-) "roboteq_control/Service")
(setf (get roboteq_control::Service :request) roboteq_control::ServiceRequest)
(setf (get roboteq_control::Service :response) roboteq_control::ServiceResponse)

(defmethod roboteq_control::ServiceRequest
  (:response () (instance roboteq_control::ServiceResponse :init)))

(setf (get roboteq_control::ServiceRequest :md5sum-) "e6679107a9158ba5cdd48d614a8c1546")
(setf (get roboteq_control::ServiceRequest :datatype-) "roboteq_control/ServiceRequest")
(setf (get roboteq_control::ServiceRequest :definition-)
      "string service
---
string information

")

(setf (get roboteq_control::ServiceResponse :md5sum-) "e6679107a9158ba5cdd48d614a8c1546")
(setf (get roboteq_control::ServiceResponse :datatype-) "roboteq_control/ServiceResponse")
(setf (get roboteq_control::ServiceResponse :definition-)
      "string service
---
string information

")



(provide :roboteq_control/Service "e6679107a9158ba5cdd48d614a8c1546")


