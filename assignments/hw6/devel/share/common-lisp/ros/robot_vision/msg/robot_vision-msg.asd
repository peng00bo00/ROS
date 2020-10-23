
(cl:in-package :asdf)

(defsystem "robot_vision-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FaceMsg" :depends-on ("_package_FaceMsg"))
    (:file "_package_FaceMsg" :depends-on ("_package"))
  ))