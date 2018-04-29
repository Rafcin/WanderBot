
(cl:in-package :asdf)

(defsystem "ros_ultrasonic_bumper-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ultrasnd_bump_ranges" :depends-on ("_package_ultrasnd_bump_ranges"))
    (:file "_package_ultrasnd_bump_ranges" :depends-on ("_package"))
  ))