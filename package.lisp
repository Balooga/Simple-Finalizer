;;; -*- lisp -*-

(in-package #:cl-user)

(defpackage #:simple-finalizer
  (:use #:cl)
  (:nicknames #:simfin)
  (:export

   ;; "simple-finalizer.lisp"
   #:foreign-object
   #:fp
   #:gc-p
   #:free
   #:free-p
   #:this-fp))
