;; Auto-generated. Do not edit!


(when (boundp 'image_generator::Detection)
  (if (not (find-package "IMAGE_GENERATOR"))
    (make-package "IMAGE_GENERATOR"))
  (shadow 'Detection (find-package "IMAGE_GENERATOR")))
(unless (find-package "IMAGE_GENERATOR::DETECTION")
  (make-package "IMAGE_GENERATOR::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude Detection.msg.html


(intern "*CLASSUNCLASSIFIED*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSUNCLASSIFIED* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSUNCLASSIFIED* 0)
(intern "*CLASSUNKNOWNSMALL*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSUNKNOWNSMALL* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSUNKNOWNSMALL* 1)
(intern "*CLASSUNKNOWNBIG*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSUNKNOWNBIG* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSUNKNOWNBIG* 2)
(intern "*CLASSPEDESTRIAN*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSPEDESTRIAN* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSPEDESTRIAN* 3)
(intern "*CLASSMOTORBIKE*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSMOTORBIKE* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSMOTORBIKE* 4)
(intern "*CLASSCAR*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSCAR* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSCAR* 5)
(intern "*CLASSTRUCK*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSTRUCK* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSTRUCK* 6)
(intern "*CLASSSTRUCTURE_PYLON*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSSTRUCTURE_PYLON* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSSTRUCTURE_PYLON* 7)
(intern "*CLASSSTRUCTURE_BEACON*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSSTRUCTURE_BEACON* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSSTRUCTURE_BEACON* 8)
(intern "*CLASSSTRUCTURE_GUARDRAIL*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSSTRUCTURE_GUARDRAIL* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSSTRUCTURE_GUARDRAIL* 9)
(intern "*CLASSSTRUCTURE_CONCRETEBARRIER*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSSTRUCTURE_CONCRETEBARRIER* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSSTRUCTURE_CONCRETEBARRIER* 10)
(intern "*CLASSUNKNOWN*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSUNKNOWN* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSUNKNOWN* 15)
(intern "*CLASSBUS*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSBUS* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSBUS* 16)
(intern "*CLASSBICYCLE*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSBICYCLE* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSBICYCLE* 17)
(intern "*CLASSTRAFFICLIGHT*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSTRAFFICLIGHT* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSTRAFFICLIGHT* 18)
(intern "*CLASSTRAIN*" (find-package "IMAGE_GENERATOR::DETECTION"))
(shadow '*CLASSTRAIN* (find-package "IMAGE_GENERATOR::DETECTION"))
(defconstant image_generator::Detection::*CLASSTRAIN* 19)

(defun image_generator::Detection-to-symbol (const)
  (cond
        ((= const 0) 'image_generator::Detection::*ClassUnclassified*)
        ((= const 1) 'image_generator::Detection::*ClassUnknownSmall*)
        ((= const 2) 'image_generator::Detection::*ClassUnknownBig*)
        ((= const 3) 'image_generator::Detection::*ClassPedestrian*)
        ((= const 4) 'image_generator::Detection::*ClassMotorbike*)
        ((= const 5) 'image_generator::Detection::*ClassCar*)
        ((= const 6) 'image_generator::Detection::*ClassTruck*)
        ((= const 7) 'image_generator::Detection::*ClassStructure_Pylon*)
        ((= const 8) 'image_generator::Detection::*ClassStructure_Beacon*)
        ((= const 9) 'image_generator::Detection::*ClassStructure_GuardRail*)
        ((= const 10) 'image_generator::Detection::*ClassStructure_ConcreteBarrier*)
        ((= const 15) 'image_generator::Detection::*ClassUnknown*)
        ((= const 16) 'image_generator::Detection::*ClassBus*)
        ((= const 17) 'image_generator::Detection::*ClassBicycle*)
        ((= const 18) 'image_generator::Detection::*ClassTrafficLight*)
        ((= const 19) 'image_generator::Detection::*ClassTrain*)
        (t nil)))

(defclass image_generator::Detection
  :super ros::object
  :slots (_cx _cy _x1 _x2 _y1 _y2 _scores _classification ))

(defmethod image_generator::Detection
  (:init
   (&key
    ((:cx __cx) 0.0)
    ((:cy __cy) 0.0)
    ((:x1 __x1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y1 __y1) 0.0)
    ((:y2 __y2) 0.0)
    ((:scores __scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:classification __classification) 0)
    )
   (send-super :init)
   (setq _cx (float __cx))
   (setq _cy (float __cy))
   (setq _x1 (float __x1))
   (setq _x2 (float __x2))
   (setq _y1 (float __y1))
   (setq _y2 (float __y2))
   (setq _scores __scores)
   (setq _classification (round __classification))
   self)
  (:cx
   (&optional __cx)
   (if __cx (setq _cx __cx)) _cx)
  (:cy
   (&optional __cy)
   (if __cy (setq _cy __cy)) _cy)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:scores
   (&optional __scores)
   (if __scores (setq _scores __scores)) _scores)
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:serialization-length
   ()
   (+
    ;; float32 _cx
    4
    ;; float32 _cy
    4
    ;; float32 _x1
    4
    ;; float32 _x2
    4
    ;; float32 _y1
    4
    ;; float32 _y2
    4
    ;; float32[] _scores
    (* 4    (length _scores)) 4
    ;; int16 _classification
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _cx
       (sys::poke _cx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cy
       (sys::poke _cy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _scores
     (write-long (length _scores) s)
     (dotimes (i (length _scores))
       (sys::poke (elt _scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16 _classification
       (write-word _classification s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _cx
     (setq _cx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cy
     (setq _cy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x2
     (setq _x2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y2
     (setq _y2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int16 _classification
     (setq _classification (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get image_generator::Detection :md5sum-) "81bf65ed206cd9d9e7ff61e00901db1f")
(setf (get image_generator::Detection :datatype-) "image_generator/Detection")
(setf (get image_generator::Detection :definition-)
      "# Center of segmentation
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



(provide :image_generator/Detection "81bf65ed206cd9d9e7ff61e00901db1f")


