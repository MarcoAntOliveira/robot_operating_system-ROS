; Auto-generated. Do not edit!


(cl:in-package my_project_msg-srv)


;//! \htmlinclude CheckNumber-request.msg.html

(cl:defclass <CheckNumber-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:float
    :initform 0.0))
)

(cl:defclass CheckNumber-request (<CheckNumber-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckNumber-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckNumber-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_project_msg-srv:<CheckNumber-request> is deprecated: use my_project_msg-srv:CheckNumber-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <CheckNumber-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_project_msg-srv:number-val is deprecated.  Use my_project_msg-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckNumber-request>) ostream)
  "Serializes a message object of type '<CheckNumber-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckNumber-request>) istream)
  "Deserializes a message object of type '<CheckNumber-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'number) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckNumber-request>)))
  "Returns string type for a service object of type '<CheckNumber-request>"
  "my_project_msg/CheckNumberRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckNumber-request)))
  "Returns string type for a service object of type 'CheckNumber-request"
  "my_project_msg/CheckNumberRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckNumber-request>)))
  "Returns md5sum for a message object of type '<CheckNumber-request>"
  "5b4141093032f67191274c0a4b1f0f94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckNumber-request)))
  "Returns md5sum for a message object of type 'CheckNumber-request"
  "5b4141093032f67191274c0a4b1f0f94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckNumber-request>)))
  "Returns full string definition for message of type '<CheckNumber-request>"
  (cl:format cl:nil "float64 number~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckNumber-request)))
  "Returns full string definition for message of type 'CheckNumber-request"
  (cl:format cl:nil "float64 number~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckNumber-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckNumber-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckNumber-request
    (cl:cons ':number (number msg))
))
;//! \htmlinclude CheckNumber-response.msg.html

(cl:defclass <CheckNumber-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CheckNumber-response (<CheckNumber-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckNumber-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckNumber-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_project_msg-srv:<CheckNumber-response> is deprecated: use my_project_msg-srv:CheckNumber-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CheckNumber-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_project_msg-srv:result-val is deprecated.  Use my_project_msg-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckNumber-response>) ostream)
  "Serializes a message object of type '<CheckNumber-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckNumber-response>) istream)
  "Deserializes a message object of type '<CheckNumber-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckNumber-response>)))
  "Returns string type for a service object of type '<CheckNumber-response>"
  "my_project_msg/CheckNumberResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckNumber-response)))
  "Returns string type for a service object of type 'CheckNumber-response"
  "my_project_msg/CheckNumberResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckNumber-response>)))
  "Returns md5sum for a message object of type '<CheckNumber-response>"
  "5b4141093032f67191274c0a4b1f0f94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckNumber-response)))
  "Returns md5sum for a message object of type 'CheckNumber-response"
  "5b4141093032f67191274c0a4b1f0f94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckNumber-response>)))
  "Returns full string definition for message of type '<CheckNumber-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckNumber-response)))
  "Returns full string definition for message of type 'CheckNumber-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckNumber-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckNumber-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckNumber-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CheckNumber)))
  'CheckNumber-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CheckNumber)))
  'CheckNumber-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckNumber)))
  "Returns string type for a service object of type '<CheckNumber>"
  "my_project_msg/CheckNumber")