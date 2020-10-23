;; Auto-generated. Do not edit!


(when (boundp 'test3::PersonSrv)
  (if (not (find-package "TEST3"))
    (make-package "TEST3"))
  (shadow 'PersonSrv (find-package "TEST3")))
(unless (find-package "TEST3::PERSONSRV")
  (make-package "TEST3::PERSONSRV"))
(unless (find-package "TEST3::PERSONSRVREQUEST")
  (make-package "TEST3::PERSONSRVREQUEST"))
(unless (find-package "TEST3::PERSONSRVRESPONSE")
  (make-package "TEST3::PERSONSRVRESPONSE"))

(in-package "ROS")





(intern "*UNKNOWN*" (find-package "TEST3::PERSONSRVREQUEST"))
(shadow '*UNKNOWN* (find-package "TEST3::PERSONSRVREQUEST"))
(defconstant test3::PersonSrvRequest::*UNKNOWN* 0)
(intern "*MALE*" (find-package "TEST3::PERSONSRVREQUEST"))
(shadow '*MALE* (find-package "TEST3::PERSONSRVREQUEST"))
(defconstant test3::PersonSrvRequest::*MALE* 1)
(intern "*FEMALE*" (find-package "TEST3::PERSONSRVREQUEST"))
(shadow '*FEMALE* (find-package "TEST3::PERSONSRVREQUEST"))
(defconstant test3::PersonSrvRequest::*FEMALE* 2)

(defun test3::PersonSrvRequest-to-symbol (const)
  (cond
        ((= const 0) 'test3::PersonSrvRequest::*unknown*)
        ((= const 1) 'test3::PersonSrvRequest::*male*)
        ((= const 2) 'test3::PersonSrvRequest::*female*)
        (t nil)))

(defclass test3::PersonSrvRequest
  :super ros::object
  :slots (_name _age _sex ))

(defmethod test3::PersonSrvRequest
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:sex __sex) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _sex (round __sex))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:sex
   (&optional __sex)
   (if __sex (setq _sex __sex)) _sex)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _age
    1
    ;; uint8 _sex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; uint8 _sex
       (write-byte _sex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sex
     (setq _sex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass test3::PersonSrvResponse
  :super ros::object
  :slots (_result ))

(defmethod test3::PersonSrvResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass test3::PersonSrv
  :super ros::object
  :slots ())

(setf (get test3::PersonSrv :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get test3::PersonSrv :datatype-) "test3/PersonSrv")
(setf (get test3::PersonSrv :request) test3::PersonSrvRequest)
(setf (get test3::PersonSrv :response) test3::PersonSrvResponse)

(defmethod test3::PersonSrvRequest
  (:response () (instance test3::PersonSrvResponse :init)))

(setf (get test3::PersonSrvRequest :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get test3::PersonSrvRequest :datatype-) "test3/PersonSrvRequest")
(setf (get test3::PersonSrvRequest :definition-)
      "string name
uint8  age
uint8  sex

uint8 unknown = 0
uint8 male    = 1
uint8 female  = 2

---
string result

")

(setf (get test3::PersonSrvResponse :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get test3::PersonSrvResponse :datatype-) "test3/PersonSrvResponse")
(setf (get test3::PersonSrvResponse :definition-)
      "string name
uint8  age
uint8  sex

uint8 unknown = 0
uint8 male    = 1
uint8 female  = 2

---
string result

")



(provide :test3/PersonSrv "c198113e7dd9cc5c9fd5f271c8479b39")


