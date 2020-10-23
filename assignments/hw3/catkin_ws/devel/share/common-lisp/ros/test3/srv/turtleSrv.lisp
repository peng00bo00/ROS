; Auto-generated. Do not edit!


(cl:in-package test3-srv)


;//! \htmlinclude turtleSrv-request.msg.html

(cl:defclass <turtleSrv-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (omega
    :reader omega
    :initarg :omega
    :type cl:float
    :initform 0.0)
   (move
    :reader move
    :initarg :move
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass turtleSrv-request (<turtleSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtleSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtleSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test3-srv:<turtleSrv-request> is deprecated: use test3-srv:turtleSrv-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <turtleSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:name-val is deprecated.  Use test3-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <turtleSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:v-val is deprecated.  Use test3-srv:v instead.")
  (v m))

(cl:ensure-generic-function 'omega-val :lambda-list '(m))
(cl:defmethod omega-val ((m <turtleSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:omega-val is deprecated.  Use test3-srv:omega instead.")
  (omega m))

(cl:ensure-generic-function 'move-val :lambda-list '(m))
(cl:defmethod move-val ((m <turtleSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:move-val is deprecated.  Use test3-srv:move instead.")
  (move m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtleSrv-request>) ostream)
  "Serializes a message object of type '<turtleSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'omega))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'move) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtleSrv-request>) istream)
  "Deserializes a message object of type '<turtleSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'move) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtleSrv-request>)))
  "Returns string type for a service object of type '<turtleSrv-request>"
  "test3/turtleSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtleSrv-request)))
  "Returns string type for a service object of type 'turtleSrv-request"
  "test3/turtleSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtleSrv-request>)))
  "Returns md5sum for a message object of type '<turtleSrv-request>"
  "d7f17f4973957daccba4e4c09ebf6d27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtleSrv-request)))
  "Returns md5sum for a message object of type 'turtleSrv-request"
  "d7f17f4973957daccba4e4c09ebf6d27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtleSrv-request>)))
  "Returns full string definition for message of type '<turtleSrv-request>"
  (cl:format cl:nil "string name~%float64  v~%float64  omega~%bool   move~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtleSrv-request)))
  "Returns full string definition for message of type 'turtleSrv-request"
  (cl:format cl:nil "string name~%float64  v~%float64  omega~%bool   move~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtleSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtleSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'turtleSrv-request
    (cl:cons ':name (name msg))
    (cl:cons ':v (v msg))
    (cl:cons ':omega (omega msg))
    (cl:cons ':move (move msg))
))
;//! \htmlinclude turtleSrv-response.msg.html

(cl:defclass <turtleSrv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass turtleSrv-response (<turtleSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtleSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtleSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name test3-srv:<turtleSrv-response> is deprecated: use test3-srv:turtleSrv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <turtleSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader test3-srv:result-val is deprecated.  Use test3-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtleSrv-response>) ostream)
  "Serializes a message object of type '<turtleSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtleSrv-response>) istream)
  "Deserializes a message object of type '<turtleSrv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtleSrv-response>)))
  "Returns string type for a service object of type '<turtleSrv-response>"
  "test3/turtleSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtleSrv-response)))
  "Returns string type for a service object of type 'turtleSrv-response"
  "test3/turtleSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtleSrv-response>)))
  "Returns md5sum for a message object of type '<turtleSrv-response>"
  "d7f17f4973957daccba4e4c09ebf6d27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtleSrv-response)))
  "Returns md5sum for a message object of type 'turtleSrv-response"
  "d7f17f4973957daccba4e4c09ebf6d27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtleSrv-response>)))
  "Returns full string definition for message of type '<turtleSrv-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtleSrv-response)))
  "Returns full string definition for message of type 'turtleSrv-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtleSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtleSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'turtleSrv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'turtleSrv)))
  'turtleSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'turtleSrv)))
  'turtleSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtleSrv)))
  "Returns string type for a service object of type '<turtleSrv>"
  "test3/turtleSrv")