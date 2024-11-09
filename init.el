;; Create a variable to indicate where emacs's configuration is installed
(setq EMACS_DIR "/usr/local/src/java_emacs/")

;; Avoid garbage collection at statup
(setq gc-cons-threshold most-positive-fixnum ; 2^61 bytes
      gc-cons-percentage 0.6)

;; mypersonal settings
(setq column-number-mode t)
(global-display-line-numbers-mode)
(setq inhibit-startup-screen t)
(setq-default indent-tabs-mode nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(global-auto-revert-mode 1) ;; auto-reload external changes

(setq lsp-enable-on-type-formatting t)
(setq lsp-format-on-save t)
(setq lsp-java-format-enabled t)
(setq lsp-java-save-actions-organize-imports t) ; Organize imports on save

;; All the settings and package installation is set in configuration.org
;; (org-babel-load-file "/usr/local/src/java_emacs/emacs-configuration.org")
(load-file "/usr/local/src/java_emacs/emacs-configuration.el")

(add-hook 'emacs-startup-hook
  (lambda ()
    (setq gc-cons-threshold 300000000 ; 300mb	
          gc-cons-percentage 0.1)))
