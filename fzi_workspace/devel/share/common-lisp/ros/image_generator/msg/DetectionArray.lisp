; Auto-generated. Do not edit!


(cl:in-package image_generator-msg)


;//! \htmlinclude DetectionArray.msg.html

(cl:defclass <DetectionArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (camId
    :reader camId
    :initarg :camId
    :type cl:integer
    :initform 0)
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector image_generator-msg:Detection)
   :initform (cl:make-array 0 :element-type 'image_generator-msg:Detection :initial-element (cl:make-instance 'image_generator-msg:Detection))))
)

(cl:defclass DetectionArray (<DetectionArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectionArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectionArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_generator-msg:<DetectionArray> is deprecated: use image_generator-msg:DetectionArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:header-val is deprecated.  Use image_generator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'camId-val :lambda-list '(m))
(cl:defmethod camId-val ((m <DetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:camId-val is deprecated.  Use image_generator-msg:camId instead.")
  (camId m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <DetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_generator-msg:detections-val is deprecated.  Use image_generator-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectionArray>) ostream)
  "Serializes a message object of type '<DetectionArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'camId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'camId)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectionArray>) istream)
  "Deserializes a message object of type '<DetectionArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'camId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'camId)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'image_generator-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectionArray>)))
  "Returns string type for a message object of type '<DetectionArray>"
  "image_generator/DetectionArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectionArray)))
  "Returns string type for a message object of type 'DetectionArray"
  "image_generator/DetectionArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectionArray>)))
  "Returns md5sum for a message object of type '<DetectionArray>"
  "800cf52de8cbec7e2f1b32f57b694b11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectionArray)))
  "Returns md5sum for a message object of type 'DetectionArray"
  "800cf52de8cbec7e2f1b32f57b694b11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectionArray>)))
  "Returns full string definition for message of type '<DetectionArray>"
  (cl:format cl:nil "# Header with timestamp and frame_id~%Header header~%~%# Id of camera~%uint32 camId~%~%# List of detections~%Detection[] detections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: image_generator/Detection~%# Center of segmentation~%float32 cx~%float32 cy~%~%# Bounding box corners~%float32 x1~%float32 x2~%float32 y1~%float32 y2~%~%# The classification confidences (probabilities)~%float32[] scores~%~%# Enum for the obstacle classification result~%int16   ClassUnclassified = 0 ~%int16   ClassUnknownSmall = 1~%int16   ClassUnknownBig = 2~%int16   ClassPedestrian = 3 ~%int16   ClassMotorbike = 4~%int16   ClassCar = 5~%int16   ClassTruck = 6~%int16   ClassStructure_Pylon = 7~%int16   ClassStructure_Beacon = 8~%int16   ClassStructure_GuardRail = 9~%int16   ClassStructure_ConcreteBarrier = 10~%int16   ClassUnknown = 15~%int16   ClassBus = 16~%int16   ClassBicycle = 17~%int16   ClassTrafficLight = 18~%int16   ClassTrain = 19~%~%# The obstacle classification with the highest probability.~%#~%int16   classification~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectionArray)))
  "Returns full string definition for message of type 'DetectionArray"
  (cl:format cl:nil "# Header with timestamp and frame_id~%Header header~%~%# Id of camera~%uint32 camId~%~%# List of detections~%Detection[] detections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: image_generator/Detection~%# Center of segmentation~%float32 cx~%float32 cy~%~%# Bounding box corners~%float32 x1~%float32 x2~%float32 y1~%float32 y2~%~%# The classification confidences (probabilities)~%float32[] scores~%~%# Enum for the obstacle classification result~%int16   ClassUnclassified = 0 ~%int16   ClassUnknownSmall = 1~%int16   ClassUnknownBig = 2~%int16   ClassPedestrian = 3 ~%int16   ClassMotorbike = 4~%int16   ClassCar = 5~%int16   ClassTruck = 6~%int16   ClassStructure_Pylon = 7~%int16   ClassStructure_Beacon = 8~%int16   ClassStructure_GuardRail = 9~%int16   ClassStructure_ConcreteBarrier = 10~%int16   ClassUnknown = 15~%int16   ClassBus = 16~%int16   ClassBicycle = 17~%int16   ClassTrafficLight = 18~%int16   ClassTrain = 19~%~%# The obstacle classification with the highest probability.~%#~%int16   classification~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectionArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectionArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectionArray
    (cl:cons ':header (header msg))
    (cl:cons ':camId (camId msg))
    (cl:cons ':detections (detections msg))
))
