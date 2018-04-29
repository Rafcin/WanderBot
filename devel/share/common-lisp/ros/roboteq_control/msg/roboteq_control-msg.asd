
(cl:in-package :asdf)

(defsystem "roboteq_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControlStatus" :depends-on ("_package_ControlStatus"))
    (:file "_package_ControlStatus" :depends-on ("_package"))
    (:file "MotorStatus" :depends-on ("_package_MotorStatus"))
    (:file "_package_MotorStatus" :depends-on ("_package"))
    (:file "Peripheral" :depends-on ("_package_Peripheral"))
    (:file "_package_Peripheral" :depends-on ("_package"))
  ))