;; Auto-generated. Do not edit!


(when (boundp 'my_project_msg::CheckNumber)
  (if (not (find-package "MY_PROJECT_MSG"))
    (make-package "MY_PROJECT_MSG"))
  (shadow 'CheckNumber (find-package "MY_PROJECT_MSG")))
(unless (find-package "MY_PROJECT_MSG::CHECKNUMBER")
  (make-package "MY_PROJECT_MSG::CHECKNUMBER"))
(unless (find-package "MY_PROJECT_MSG::CHECKNUMBERREQUEST")
  (make-package "MY_PROJECT_MSG::CHECKNUMBERREQUEST"))
(unless (find-package "MY_PROJECT_MSG::CHECKNUMBERRESPONSE")
  (make-package "MY_PROJECT_MSG::CHECKNUMBERRESPONSE"))

(in-package "ROS")





(defclass my_project_msg::CheckNumberRequest
  :super ros::object
  :slots (_number ))

(defmethod my_project_msg::CheckNumberRequest
  (:init
   (&key
    ((:number __number) 0.0)
    )
   (send-super :init)
   (setq _number (float __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; float64 _number
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _number
       (sys::poke _number (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _number
     (setq _number (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass my_project_msg::CheckNumberResponse
  :super ros::object
  :slots (_result ))

(defmethod my_project_msg::CheckNumberResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_project_msg::CheckNumber
  :super ros::object
  :slots ())

(setf (get my_project_msg::CheckNumber :md5sum-) "5b4141093032f67191274c0a4b1f0f94")
(setf (get my_project_msg::CheckNumber :datatype-) "my_project_msg/CheckNumber")
(setf (get my_project_msg::CheckNumber :request) my_project_msg::CheckNumberRequest)
(setf (get my_project_msg::CheckNumber :response) my_project_msg::CheckNumberResponse)

(defmethod my_project_msg::CheckNumberRequest
  (:response () (instance my_project_msg::CheckNumberResponse :init)))

(setf (get my_project_msg::CheckNumberRequest :md5sum-) "5b4141093032f67191274c0a4b1f0f94")
(setf (get my_project_msg::CheckNumberRequest :datatype-) "my_project_msg/CheckNumberRequest")
(setf (get my_project_msg::CheckNumberRequest :definition-)
      "float64 number

---
bool result
")

(setf (get my_project_msg::CheckNumberResponse :md5sum-) "5b4141093032f67191274c0a4b1f0f94")
(setf (get my_project_msg::CheckNumberResponse :datatype-) "my_project_msg/CheckNumberResponse")
(setf (get my_project_msg::CheckNumberResponse :definition-)
      "float64 number

---
bool result
")



(provide :my_project_msg/CheckNumber "5b4141093032f67191274c0a4b1f0f94")


