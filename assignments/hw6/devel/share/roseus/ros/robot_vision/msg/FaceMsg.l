;; Auto-generated. Do not edit!


(when (boundp 'robot_vision::FaceMsg)
  (if (not (find-package "ROBOT_VISION"))
    (make-package "ROBOT_VISION"))
  (shadow 'FaceMsg (find-package "ROBOT_VISION")))
(unless (find-package "ROBOT_VISION::FACEMSG")
  (make-package "ROBOT_VISION::FACEMSG"))

(in-package "ROS")
;;//! \htmlinclude FaceMsg.msg.html


(defclass robot_vision::FaceMsg
  :super ros::object
  :slots (_x _y _w _h ))

(defmethod robot_vision::FaceMsg
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:w __w) 0.0)
    ((:h __h) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _w (float __w))
   (setq _h (float __h))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _w
    4
    ;; float32 _h
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _h
       (sys::poke _h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _h
     (setq _h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_vision::FaceMsg :md5sum-) "26e9e3e8f4a1449cbd9cd2993e5e3438")
(setf (get robot_vision::FaceMsg :datatype-) "robot_vision/FaceMsg")
(setf (get robot_vision::FaceMsg :definition-)
      "float32 x
float32 y
float32 w
float32 h

")



(provide :robot_vision/FaceMsg "26e9e3e8f4a1449cbd9cd2993e5e3438")


