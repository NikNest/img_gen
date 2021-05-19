
(cl:in-package :asdf)

(defsystem "image_generator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Detection" :depends-on ("_package_Detection"))
    (:file "_package_Detection" :depends-on ("_package"))
    (:file "DetectionArray" :depends-on ("_package_DetectionArray"))
    (:file "_package_DetectionArray" :depends-on ("_package"))
    (:file "ObjectCount" :depends-on ("_package_ObjectCount"))
    (:file "_package_ObjectCount" :depends-on ("_package"))
  ))