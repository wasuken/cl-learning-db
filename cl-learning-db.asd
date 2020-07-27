(defsystem "cl-learning-db"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-learning-db/tests"))))

(defsystem "cl-learning-db/tests"
  :author ""
  :license ""
  :depends-on ("cl-learning-db"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-learning-db"
  :perform (test-op (op c) (symbol-call :rove :run c)))
