; Auto-generated. Do not edit!


(cl:in-package image_generator-msg)


;//! \htmlinclude Detection.msg.html

(cl:defclass <Detection> (roslisp-msg-protocol:ros-message)
  ((cx
    :reader cx
    :initarg :cx
    :type cl:float
    :initform 0.0)
   (cy
    :reader cy
    :initarg :cy
    :type cl:float
    :initform 0.0)
   (x1
    :reader x1
    :initarg :x1
    :type cl:float
    :initform 0.0)
   (x2
    :reader x2
    :initarg :x2
    :type cl:float
    :initform 0.0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:float
    :initform 0.0)
   (y2
    :reader y2
    :initarg :y2
    :type cl:float
    :initform 0.0)
   (scores
    :reader scores
    :initarg :scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (classification
    :reader classification
    :initarg :classification
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Detection (<Detection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_generator-msg:<Detection> is deprecated: use image_generator-msg:Detection instead.")))

(cl:ensure-generic-function 'cx-val :lambda-list '(m))
(cl:defmethod cx-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:cx-val is deprecated.  Use image_generator-msg:cx instead.")
  (cx m))

(cl:ensure-generic-function 'cy-val :lambda-list '(m))
(cl:defmethod cy-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:cy-val is deprecated.  Use image_generator-msg:cy instead.")
  (cy m))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:x1-val is deprecated.  Use image_generator-msg:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:x2-val is deprecated.  Use image_generator-msg:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:y1-val is deprecated.  Use image_generator-msg:y1 instead.")
  (y1 m))

(cl:ensure-generic-function 'y2-val :lambda-list '(m))
(cl:defmethod y2-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:y2-val is deprecated.  Use image_generator-msg:y2 instead.")
  (y2 m))

(cl:ensure-generic-function 'scores-val :lambda-list '(m))
(cl:defmethod scores-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:scores-val is deprecated.  Use image_generator-msg:scores instead.")
  (scores m))

(cl:ensure-generic-function 'classification-val :lambda-list '(m))
(cl:defmethod classification-val ((m <Detection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:classification-val is deprecated.  Use image_generator-msg:classification instead.")
  (classification m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Detection>)))
    "Constants for message type '<Detection>"
  '((:CLASSUNCLASSIFIED . 0)
    (:CLASSUNKNOWNSMALL . 1)
    (:CLASSUNKNOWNBIG . 2)
    (:CLASSPEDESTRIAN . 3)
    (:CLASSMOTORBIKE . 4)
    (:CLASSCAR . 5)
    (:CLASSTRUCK . 6)
    (:CLASSSTRUCTURE_PYLON . 7)
    (:CLASSSTRUCTURE_BEACON . 8)
    (:CLASSSTRUCTURE_GUARDRAIL . 9)
    (:CLASSSTRUCTURE_CONCRETEBARRIER . 10)
    (:CLASSUNKNOWN . 15)
    (:CLASSBUS . 16)
    (:CLASSBICYCLE . 17)
    (:CLASSTRAFFICLIGHT . 18)
    (:CLASSTRAIN . 19))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Detection)))
    "Constants for message type 'Detection"
  '((:CLASSUNCLASSIFIED . 0)
    (:CLASSUNKNOWNSMALL . 1)
    (:CLASSUNKNOWNBIG . 2)
    (:CLASSPEDESTRIAN . 3)
    (:CLASSMOTORBIKE . 4)
    (:CLASSCAR . 5)
    (:CLASSTRUCK . 6)
    (:CLASSSTRUCTURE_PYLON . 7)
    (:CLASSSTRUCTURE_BEACON . 8)
    (:CLASSSTRUCTURE_GUARDRAIL . 9)
    (:CLASSSTRUCTURE_CONCRETEBARRIER . 10)
    (:CLASSUNKNOWN . 15)
    (:CLASSBUS . 16)
    (:CLASSBICYCLE . 17)
    (:CLASSTRAFFICLIGHT . 18)
    (:CLASSTRAIN . 19))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection>) ostream)
  "Serializes a message object of type '<Detection>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'scores))
  (cl:let* ((signed (cl:slot-value msg 'classification)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection>) istream)
  "Deserializes a message object of type '<Detection>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y2) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'classification) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection>)))
  "Returns string type for a message object of type '<Detection>"
  "image_generator/Detection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection)))
  "Returns string type for a message object of type 'Detection"
  "image_generator/Detection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection>)))
  "Returns md5sum for a message object of type '<Detection>"
  "81bf65ed206cd9d9e7ff61e00901db1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection)))
  "Returns md5sum for a message object of type 'Detection"
  "81bf65ed206cd9d9e7ff61e00901db1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection>)))
  "Returns full string definition for message of type '<Detection>"
  (cl:format cl:nil "# Center of segmentation~%float32 cx~%float32 cy~%~%# Bounding box corners~%float32 x1~%float32 x2~%float32 y1~%float32 y2~%~%# The classification confidences (probabilities)~%float32[] scores~%~%# Enum for the obstacle classification result~%int16   ClassUnclassified = 0 ~%int16   ClassUnknownSmall = 1~%int16   ClassUnknownBig = 2~%int16   ClassPedestrian = 3 ~%int16   ClassMotorbike = 4~%int16   ClassCar = 5~%int16   ClassTruck = 6~%int16   ClassStructure_Pylon = 7~%int16   ClassStructure_Beacon = 8~%int16   ClassStructure_GuardRail = 9~%int16   ClassStructure_ConcreteBarrier = 10~%int16   ClassUnknown = 15~%int16   ClassBus = 16~%int16   ClassBicycle = 17~%int16   ClassTrafficLight = 18~%int16   ClassTrain = 19~%~%# The obstacle classification with the highest probability.~%#~%int16   classification~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection)))
  "Returns full string definition for message of type 'Detection"
  (cl:format cl:nil "# Center of segmentation~%float32 cx~%float32 cy~%~%# Bounding box corners~%float32 x1~%float32 x2~%float32 y1~%float32 y2~%~%# The classification confidences (probabilities)~%float32[] scores~%~%# Enum for the obstacle classification result~%int16   ClassUnclassified = 0 ~%int16   ClassUnknownSmall = 1~%int16   ClassUnknownBig = 2~%int16   ClassPedestrian = 3 ~%int16   ClassMotorbike = 4~%int16   ClassCar = 5~%int16   ClassTruck = 6~%int16   ClassStructure_Pylon = 7~%int16   ClassStructure_Beacon = 8~%int16   ClassStructure_GuardRail = 9~%int16   ClassStructure_ConcreteBarrier = 10~%int16   ClassUnknown = 15~%int16   ClassBus = 16~%int16   ClassBicycle = 17~%int16   ClassTrafficLight = 18~%int16   ClassTrain = 19~%~%# The obstacle classification with the highest probability.~%#~%int16   classification~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection
    (cl:cons ':cx (cx msg))
    (cl:cons ':cy (cy msg))
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':y1 (y1 msg))
    (cl:cons ':y2 (y2 msg))
    (cl:cons ':scores (scores msg))
    (cl:cons ':classification (classification msg))
))
