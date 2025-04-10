;; package
(package-initialize)
(setq package-archives
	  '(("gnu" . "http://elpa.gnu.org/packages/")
	    ("melpa" . "http://melpa.org/packages/")
	    ("org" . "http://orgmode.org/elpa/")))

;; disable beep sound
(show-paren-mode 1)

;; highlight matching parentheses
(setq ring-bell-function 'ignore)

;; show line numbers globally
(global-display-line-numbers-mode 1)

;; disable startup message
(setq inhibit-startup-message 1)

;; remove initial message in scratch buffer
(setq initial-scratch-message "")

;; tab width -> 2 spaces
(setq-default indent-tabs-mode nil)  ;; convert tab to spaces
(setq-default tab-width 2)           ;; set tab width to 2
(setq-default standard-indent 2)     ;; set standart indent width to 2
