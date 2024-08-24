
(cl:in-package :asdf)

(defsystem "my_project_msg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CheckNumber" :depends-on ("_package_CheckNumber"))
    (:file "_package_CheckNumber" :depends-on ("_package"))
  ))