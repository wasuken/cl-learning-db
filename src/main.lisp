(defpackage cl-learning-db
  (:use :cl))
(in-package :cl-learning-db)

;;; hash-table
(defparameter *env* nil)

;; Database base operations.
(defun read-database-config (path)
  (setf *env* (toml-parser:parse-from-file path)))
(defun delete-database (table-name))
(defun create-database (table-name params))
(defun alter-database (table-name params))

;; Table base operations.
(defun create (table-name params))
(defun drop (table-name))
;;; Implement only where,order.
(defun select (col-names collections &optional where-f order-f))
(defun delete (table-name &optional where-f))
(defun update (table-name value &optional where-f))
(defun insert (table-name params))

;;; Table Constraints
(defun constraint-primary-key (const-name table-name key))
(defun constraint-foreign-key (const-name ref-table ref-key origin-table origin-key))
(defun constraint-check (const-name table-name check-f))

;; Index processes.
(defun index (table constraints))
