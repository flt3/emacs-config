;; keybinds

(provide 'mano-keys)

;; Keyboard shortcuts
(global-set-key (kbd "M-1") 'ibuffer)
(global-set-key (kbd "M-2") 'dired-jump)
(global-set-key (kbd "M-=") 'er/expand-region)
(global-set-key (kbd "M--") 'er/contract-region)

;; (eval-after-load "ibuffer"
;;   '(progn
;;      (define-key ibuffer-mode-map (kbd "1") (lookup-key ibuffer-mode-map (kbd "p")))
;;      (define-key ibuffer-mode-map (kbd "2") (lookup-key ibuffer-mode-map (kbd "n")))
;;      (define-key ibuffer-mode-map (kbd "3") (lookup-key ibuffer-mode-map (kbd "e")))
;;    )
;;   )

(eval-after-load "dired" '(m-navigation dired-mode-map))
(eval-after-load "ibuffer" '(m-navigation ibuffer-mode-map))
(defun m-navigation (map)
  (define-key map (kbd "1") (lookup-key map (kbd "p")))
  (define-key map (kbd "2") (lookup-key map (kbd "n")))
  (define-key map (kbd "3") (lookup-key map (kbd "e")))
  )

(defun m-company-search-manual-trigger ()
  (interactive)
  
  (company-filter-candidates)
       )

(global-set-key (kbd "S-SPC") 'm-company-search-manual-trigger)

(define-key company-active-map (kbd "TAB") 'company-complete-selection)
(define-key company-active-map [tab] 'company-complete-selection)
(define-key company-search-map (kbd "S-SPC") 'company-abort)
(define-key company-search-map (kbd "SPC") 'company-complete-selection)

(add-hook 'css-mode-hook 'm-css-completion)

(defun m-css-completion ()
    (interactive)
  (define-key company-active-map (kbd "C-3") 'company-abort)
  (define-key company-active-map [?\C-3] 'company-abort)
      )

