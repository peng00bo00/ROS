;; Auto-generated. Do not edit!


(when (boundp 'test3::turtleSrv)
  (if (not (find-package "TEST3"))
    (make-package "TEST3"))
  (shadow 'turtleSrv (find-package "TEST3")))
(unless (find-package "TEST3::TURTLESRV")
  (make-package "TEST3::TURTLESRV"))
(unless (find-package "TEST3::TURTLESRVREQUEST")
  (make-package "TEST3::TURTLESRVREQUEST"))
(unless (find-package "TEST3::TURTLESRVRESPONSE")
  (make-package "TEST3::TURTLESRVRESPONSE"))

(in-package "ROS")





(defclass test3::turtleSrvRequest
  :super ros::object
  :slots (_name _v _omega _move ))

(defmethod test3::turtleSrvRequest
  (:init
   (&key
    ((:name __name) "")
    ((:v __v) 0.0)
    ((:omega __omega) 0.0)
    ((:move __move) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _v (float __v))
   (setq _omega (float __omega))
   (setq _move __move)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:move
   (&optional (__move :null))
   (if (not (eq __move :null)) (setq _move __move)) _move)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _v
    8
    ;; float64 _omega
    8
    ;; bool _move
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _move
       (if _move (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega
     (setq _omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _move
     (setq _move (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass test3::turtleSrvResponse
  :super ros::object
  :slots (_result ))

(defmethod test3::turtleSrvResponse
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

(defclass test3::turtleSrv
  :super ros::object
  :slots ())

(setf (get test3::turtleSrv :md5sum-) "d7f17f4973957daccba4e4c09ebf6d27")
(setf (get test3::turtleSrv :datatype-) "test3/turtleSrv")
(setf (get test3::turtleSrv :request) test3::turtleSrvRequest)
(setf (get test3::turtleSrv :response) test3::turtleSrvResponse)

(defmethod test3::turtleSrvRequest
  (:response () (instance test3::turtleSrvResponse :init)))

(setf (get test3::turtleSrvRequest :md5sum-) "d7f17f4973957daccba4e4c09ebf6d27")
(setf (get test3::turtleSrvRequest :datatype-) "test3/turtleSrvRequest")
(setf (get test3::turtleSrvRequest :definition-)
      "string name
float64  v
float64  omega
bool   move

---
string result

")

(setf (get test3::turtleSrvResponse :md5sum-) "d7f17f4973957daccba4e4c09ebf6d27")
(setf (get test3::turtleSrvResponse :datatype-) "test3/turtleSrvResponse")
(setf (get test3::turtleSrvResponse :definition-)
      "string name
float64  v
float64  omega
bool   move

---
string result

")



(provide :test3/turtleSrv "d7f17f4973957daccba4e4c09ebf6d27")


