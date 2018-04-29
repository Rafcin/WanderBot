
(cl:in-package :asdf)

(defsystem "image_recognition_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :image_recognition_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Annotate" :depends-on ("_package_Annotate"))
    (:file "_package_Annotate" :depends-on ("_package"))
    (:file "GetFaceProperties" :depends-on ("_package_GetFaceProperties"))
    (:file "_package_GetFaceProperties" :depends-on ("_package"))
    (:file "Recognize" :depends-on ("_package_Recognize"))
    (:file "_package_Recognize" :depends-on ("_package"))
  ))