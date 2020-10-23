; Auto-generated. Do not edit!


(cl:in-package robot_vision-msg)


;//! \htmlinclude FaceMsg.msg.html

(cl:defclass <FaceMsg> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0)
   (h
    :reader h
    :initarg :h
    :type cl:float
    :initform 0.0))
)

(cl:defclass FaceMsg (<FaceMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_vision-msg:<FaceMsg> is deprecated: use robot_vision-msg:FaceMsg instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <FaceMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_vision-msg:x-val is deprecated.  Use robot_vision-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <FaceMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_vision-msg:y-val is deprecated.  Use robot_vision-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <FaceMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_vision-msg:w-val is deprecated.  Use robot_vision-msg:w instead.")
  (w m))

(cl:ensure-generic-function 'h-val :lambda-list '(m))
(cl:defmethod h-val ((m <FaceMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_vision-msg:h-val is deprecated.  Use robot_vision-msg:h instead.")
  (h m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceMsg>) ostream)
  "Serializes a message object of type '<FaceMsg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceMsg>) istream)
  "Deserializes a message object of type '<FaceMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'h) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceMsg>)))
  "Returns string type for a message object of type '<FaceMsg>"
  "robot_vision/FaceMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceMsg)))
  "Returns string type for a message object of type 'FaceMsg"
  "robot_vision/FaceMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceMsg>)))
  "Returns md5sum for a message object of type '<FaceMsg>"
  "26e9e3e8f4a1449cbd9cd2993e5e3438")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceMsg)))
  "Returns md5sum for a message object of type 'FaceMsg"
  "26e9e3e8f4a1449cbd9cd2993e5e3438")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceMsg>)))
  "Returns full string definition for message of type '<FaceMsg>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 w~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceMsg)))
  "Returns full string definition for message of type 'FaceMsg"
  (cl:format cl:nil "float32 x~%float32 y~%float32 w~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceMsg>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceMsg
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':w (w msg))
    (cl:cons ':h (h msg))
))
