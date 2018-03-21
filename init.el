
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu t)
 '(ac-auto-start 1)
 '(ac-delay 0.0)
 '(ac-use-fuzzy t)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"])
 '(column-number-mode t)
 '(company-auto-complete nil)
 '(company-dabbrev-char-regexp "\\sw")
 '(company-idle-delay 0)
 '(company-minimum-prefix-length 1)
 '(company-search-regexp-function (quote company-search-flex-regexp))
 '(company-show-numbers t)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (spacemacs-light)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "6ac7c0f959f0d7853915012e78ff70150bfbe2a69a1b703c3ac4184f9ae3ae02" "7366916327c60fdf17b53b4ac7f565866c38e1b4a27345fe7facbf16b7a4e9e8" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(delete-selection-mode t)
 '(desktop-save-mode 1)
 '(display-time-mode t)
 '(electric-pair-mode 1)
 '(emmet-indentation 2)
 '(fci-rule-color "#ECEFF1")
 '(global-company-mode t)
 '(global-linum-mode 1)
 '(hl-sexp-background-color "#efebe9")
 '(minibuffer-prompt-properties
   (quote
    (read-only t cursor-intangible t face minibuffer-prompt)))
 '(package-hidden-regexps (quote ("\\`0blayoutrainbow")))
 '(package-selected-packages
   (quote
    (web-mode expand-region company spacemacs-theme auto-complete json-mode minimap)))
 '(scss-compile-at-save nil)
 '(scss-output-directory "css")
 '(scss-sass-command "node-sass")
 '(scss-sass-options (quote ("buffer-file-name")))
 '(show-paren-delay 0.0)
 '(show-paren-mode t)
 '(show-paren-style (quote parenthesis))
 '(show-paren-when-point-in-periphery nil)
 '(show-paren-when-point-inside-paren t)
 '(size-indication-mode t)
 '(spacemacs-theme-org-highlight t)
 '(standard-indent 2)
 '(tool-bar-mode nil)
 '(tool-bar-position (quote right))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#B71C1C")
     (40 . "#FF5722")
     (60 . "#FFA000")
     (80 . "#558b2f")
     (100 . "#00796b")
     (120 . "#2196f3")
     (140 . "#4527A0")
     (160 . "#B71C1C")
     (180 . "#FF5722")
     (200 . "#FFA000")
     (220 . "#558b2f")
     (240 . "#00796b")
     (260 . "#2196f3")
     (280 . "#4527A0")
     (300 . "#B71C1C")
     (320 . "#FF5722")
     (340 . "#FFA000")
     (360 . "#558b2f"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 98 :width normal))))
 '(mode-line ((t (:background "#e7e5eb" :foreground "#655370" :box (:line-width 1 :color "#b3b9be") :height 1.1))))
 '(show-paren-match ((t (:inherit bold :background "cyan" :foreground "#ba2f59" :underline nil :weight normal :height 1.0)))))

(setq line-spacing 1)
(setq make-backup-files nil) ;;stop creating backupfiles
;;(setq auto-save-default nil) ;;stop creating #autosave files


;; Melpa archive
;;(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(package-refresh-contents)

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)



(add-to-list 'load-path "~/.emacs.d/el_packages/")
(require 'emmet-mode)
(add-hook 'html-mode-hook 'emmet-mode)
;(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'sqml-mode-hook 'emmet-mode)

(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)



::hooks
(add-hook 'after-init-hook 'global-company-mode)
;;(require 'company)
;;(require 'company-css)
;;(add-hook 'css-mode-hook 'company-mode)


;;THEME
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(require 'mano-keys)

