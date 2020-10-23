
(cl:in-package :asdf)

(defsystem "test3-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "turtleSrv" :depends-on ("_package_turtleSrv"))
    (:file "_package_turtleSrv" :depends-on ("_package"))
  ))