;; Auto-generated. Do not edit!


(when (boundp 'image_generator::DetectionArray)
  (if (not (find-package "IMAGE_GENERATOR"))
    (make-package "IMAGE_GENERATOR"))
  (shadow 'DetectionArray (find-package "IMAGE_GENERATOR")))
(unless (find-package "IMAGE_GENERATOR::DETECTIONARRAY")
  (make-package "IMAGE_GENERATOR::DETECTIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectionArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass image_generator::DetectionArray
  :super ros::object
  :slots (_header _camId _detections ))

(defmethod image_generator::DetectionArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:camId __camId) 0)
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _camId (round __camId))
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:camId
   (&optional __camId)
   (if __camId (setq _camId __camId)) _camId)
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _camId
    4
    ;; image_generator/Detection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _camId
       (write-long _camId s)
     ;; image_generator/Detection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _camId
     (setq _camId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; image_generator/Detection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance image_generator::Detection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get image_generator::DetectionArray :md5sum-) "800cf52de8cbec7e2f1b32f57b694b11")
(setf (get image_generator::DetectionArray :datatype-) "image_generator/DetectionArray")
(setf (get image_generator::DetectionArray :definition-)
      "# Header with timestamp and frame_id
Header header

# Id of camera
uint32 camId

# List of detections
Detection[] detections
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: image_generator/Detection
# Center of segmentation
float32 cx
float32 cy

# Bounding box corners
float32 x1
float32 x2
float32 y1
float32 y2

# The classification confidences (probabilities)
float32[] scores

# Enum for the obstacle classification result
int16   ClassUnclassified = 0 
int16   ClassUnknownSmall = 1
int16   ClassUnknownBig = 2
int16   ClassPedestrian = 3 
int16   ClassMotorbike = 4
int16   ClassCar = 5
int16   ClassTruck = 6
int16   ClassStructure_Pylon = 7
int16   ClassStructure_Beacon = 8
int16   ClassStructure_GuardRail = 9
int16   ClassStructure_ConcreteBarrier = 10
int16   ClassUnknown = 15
int16   ClassBus = 16
int16   ClassBicycle = 17
int16   ClassTrafficLight = 18
int16   ClassTrain = 19

# The obstacle classification with the highest probability.
#
int16   classification
")



(provide :image_generator/DetectionArray "800cf52de8cbec7e2f1b32f57b694b11")


