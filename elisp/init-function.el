(defun avy-action-kill-whole-line (pt)
  (save-excursion
    (goto-char pt)
    (kill-whole-line))
  (select-widow
   (cdr
    (ring-ref avy-ring 0)))
  t)

(setf (alist-get ?k avy-dispatch-alist) 'avy-action-kill-stay
      (alist-get ?K avy-dispatch-alist) 'avy-action-kill-whole-line)


;; 复制整行
(defun avy-action-copy-whole-line (pt)
  (save-excursion
    (goto-char pt)
    (cl-destructuring-bind (start . end)
        (bounds-of-thing-at-point 'line)
      (copy-region-as-kill start end)))
  (select-window
   (cdr (ring-ref avy-ring 0)))
  t)

;; 粘贴整行到当前位置
(defun avy-action-yank-whole-line (pt)
  (avy-action-copy-whole-line pt)
  (save-excursion (yank))
  t)

(setf (alist-get ?y avy-dispatch-alist) 'avy-action-yank            ; y: 粘贴单词/sexp
      (alist-get ?w avy-dispatch-alist) 'avy-action-copy            ; w: 复制单词/sexp
      (alist-get ?W avy-dispatch-alist) 'avy-action-copy-whole-line ; W: 复制整行
      (alist-get ?Y avy-dispatch-alist) 'avy-action-yank-whole-line) ; Y: 粘贴整行

;; 复制整行
(defun avy-action-copy-whole-line (pt)
  (save-excursion
    (goto-char pt)
    (cl-destructuring-bind (start . end)
        (bounds-of-thing-at-point 'line)
      (copy-region-as-kill start end)))
  (select-window
   (cdr (ring-ref avy-ring 0)))
  t)

;; 粘贴整行到当前位置
(defun avy-action-yank-whole-line (pt)
  (avy-action-copy-whole-line pt)
  (save-excursion (yank))
  t)

(setf (alist-get ?y avy-dispatch-alist) 'avy-action-yank            ; y: 粘贴单词/sexp
      (alist-get ?w avy-dispatch-alist) 'avy-action-copy            ; w: 复制单词/sexp
      (alist-get ?W avy-dispatch-alist) 'avy-action-copy-whole-line ; W: 复制整行
      (alist-get ?Y avy-dispatch-alist) 'avy-action-yank-whole-line) ; Y: 粘贴整行

;; 复制整行
(defun avy-action-copy-whole-line (pt)
  (save-excursion
    (goto-char pt)
    (cl-destructuring-bind (start . end)
        (bounds-of-thing-at-point 'line)
      (copy-region-as-kill start end)))
  (select-window
   (cdr (ring-ref avy-ring 0)))
  t)

;; 粘贴整行到当前位置
(defun avy-action-yank-whole-line (pt)
  (avy-action-copy-whole-line pt)
  (save-excursion (yank))
  t)

(setf (alist-get ?y avy-dispatch-alist) 'avy-action-yank            ; y: 粘贴单词/sexp
      (alist-get ?w avy-dispatch-alist) 'avy-action-copy            ; w: 复制单词/sexp
      (alist-get ?W avy-dispatch-alist) 'avy-action-copy-whole-line ; W: 复制整行
      (alist-get ?Y avy-dispatch-alist) 'avy-action-yank-whole-line) ; Y: 粘贴整行

;; 从当前光标到目标位置建立选区
(defun avy-action-mark-to-char (pt)
  (activate-mark)
  (goto-char pt))

(setf (alist-get ?  avy-dispatch-alist) 'avy-action-mark-to-char) ; SPC: 标记到目标
;; m 默认已绑定 avy-action-mark（标记单词/sexp）





(provide 'init-function)
