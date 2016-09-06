;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Creating a binary tree in Lisp
;;
;; Designer : Tinniam V Ganesh                        Date: 18 Jun 2012
;; Define an entry
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun entry (tree)
(car tree))

;; Define left branch
(defun left-branch (tree)
(cadr tree))

;; Define right branch
(defun right-branch (tree)
(caddr tree))

;; Create node in a binary tree
(defun make-tree (entry left right)
(list entry left righta))

;; Insert element into tree
add (x tree)
(cond ((null tree) (make-tree x nil nil))
((= x (entry tree)) tree)
((< x (entry tree)) (make-tree (entry tree) (add x
(left-branch tree)) (right-branch tree)))
((> x (entry tree)) (make-tree (entry tree)
(left-branch tree) (add x (right-branch tree))))))

;; Create a binary tree function
(defun create-tree(elmnts)
(dolist (x elmnts)
(setf tree (add x tree)))
)

;; Create a null tree
(setf tree nil)

NIL

;; Add elements
(setf lst (list 23 12 1 4 5 28 4 9 10 45 89))

(23 12 1 4 5 28 4 9 10 45 89)

(create-tree lst)
NIL

;; Display the tree
tree

(23 (12 (1 NIL (4 NIL (5 NIL (9 NIL (10 NIL NIL))))) NIL) (28 NIL (45 NIL (89 NIL NIL))))

;; Define inorder traveral 
(defun inorder (tree)
(cond ((null tree))
(t (inorder (left-branch tree))
(print (entry tree))
(inorder (right-branch tree))))))

;;Define preorder traversal
(defun preorder (tree)
(cond ((null tree))
(t (print (entry tree))
(preorder (left-branch tree))
(preorder (right-branch tree))))))

;;Define postorder traversal
(defun postorder (tree)
(cond ((null tree))
(t (postorder (left-branch tree))
(postorder (right-branch tree))
(print (entry tree)))))





