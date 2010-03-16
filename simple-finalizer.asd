;;; -*- lisp -*-

(defpackage #:simple-finalizer
  (:use #:cl #:asdf))
(in-package #:simple-finalizer)

(defsystem :simple-finalizer
  :description "A simple Common Lisp finalizer for foreign objects when using CFFI and TRIVIAL-GARBAGE."
  :version "0.1"
  :author "Luke Crook <luke@balooga.com>"
  :maintainer "Luke Crook <luke@balooga.com>"
  :licence "BSD"
  :depends-on (cffi trivial-garbage)
  :perform (load-op :after (op simple-finalizer)
		    (pushnew :simple-finalizer *features*))
  :components
  ((:file "package")
   (:file "simple-finalizer")
   (:html-file "index")
   (:doc-file "README")
   (:doc-file "COPYING")
   (:doc-file "CONTRIBUTORS"))
  :serial t)
