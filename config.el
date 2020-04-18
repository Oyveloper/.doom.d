(evilem-default-keybindings "ø")

(package-initialize)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)
;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "monospace" :size 14))

(setq mac-option-modifier nil
      mac-command-modifier 'meta)

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Setting the kill shortcut
(global-set-key (kbd "C-x k") 'kill-current-buffer)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(use-package yasnippet
  :ensure t
  :config
  (use-package yasnippet-snippets
    :ensure t
    )
  (yas-reload-all))

(add-hook 'python-mode-hook 'yas-minor-mode)
(add-hook 'js-mode-hook 'yas-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'yas-minor-mode)
(add-hook 'org-mode-hook 'yas-minor-mode)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)

(global-set-key (kbd "C-c h e") (lambda () (interactive)(find-file"/ssh:pi@home:/home/homeassistant/.homeassistant/configuration.yaml")))

;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Øyvind Monsen"
      user-mail-address "yvind.monsen@gmail.com")

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
