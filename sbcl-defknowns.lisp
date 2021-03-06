;;; -*- Mode: Lisp; indent-tabs-mode: nil -*-

;;; This software is in the public domain and is
;;; provided with absolutely no warranty.

(in-package #:swap-bytes)

#+x86
(defknown swap-bytes-16 ((unsigned-byte 16)) (unsigned-byte 16)
    (movable foldable flushable))

#+(or x86 x86-64)
(defknown swap-bytes-32 ((unsigned-byte 32)) (unsigned-byte 32)
    (movable foldable flushable))

#+x86-64
(defknown swap-bytes-64 ((unsigned-byte 64)) (unsigned-byte 64)
    (movable foldable flushable))
