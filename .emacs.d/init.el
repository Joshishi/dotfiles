;; init.el -- Personal init.el -*- lexical-binding: t -*-

;; Author: Makoto Teramoto <mteramoto.knct@gmail.com>
;; Created: 2020/12/16
;; Version: 1
;; Note: The author is not responsible for any damage
;; to your envrionment caused by blindly using this 'init.el'

;;; Code:

(eval-and-compile
  (when (or load-file-name byte-compile-current-file)
    (setq user-emacs-directory
	  (expand-file-name
	   (file-name-directory (or load-file-name byte-compile-current-file))))))

;; <leaf-install-code>
(eval-and-compile
  (customize-set-variable
   'package-archives '(("gnu"    . "https://elpa.gnu.org/packages/")
		       ("melpha" . "https://melpa.org/packages/")
		       ("org"    . "https://orgmode.org/elpa/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))
  (leaf leaf-keywords
	:ensure t
	:init
	(leaf hydra :ensure t)
	(leaf el-get :ensure t)
	(leaf blackout :ensure t)

	:config
        ;; initialize leaf-keywords.el
	(leaf-keywords-init)))
;; </leaf-install-code>

(leaf cus-edit
      :doc "tools for custmizing Emacs and Lisp packages"
      :tag "builtin" "faces" "help"
      :custom `((custom-file . ,(locate-user-emacs-file "custom.el"))))

(leaf cus-start
      :doc "define customization properties of builtins"
      :tag "builtin" "internal"
      :preface
      (defun c/redraw-frame nil
	(interactive)
	(redraw-frame))

      :bind (("M-ESC ESC" . c/redraw-frame))
      :custom '((user-full-name . "Makoto Teramoto")
		(user-mail-address . "mteramoto.knct@gmail.com")
		(user-login-name . "Joshishi")
		(create-lockfiles . nil)
		(debug-on-error . t)
		(init-file-debug . t)
		(frame-resize-pixelwise . t)
		(enable-recursive-minibuffers . t)
		(history-length . 1000)
		(history-delete-duplicates . t)
		(scroll-preserve-screen-position . t)
		(scroll-conservatively . 100)
		(mouse-wheel-scroll-amount . '(1 ((control) . 5)))
		(ring-bell-function . 'ignore)
		(text-quoting-style . 'straight)
		(truncate-lines . t)
		;; (use-dialog-box . nil)
		;; (use-file-dialog . nil)
		;; (menu-bar-mode . t)
		;; (tool-bar-mode . nil)
		(scroll-bar-mode . nil)
		(indent-tabs-mode . nil))
      :config
      (defalias 'yes-or-no-p 'y-or-n-p)
      (keyboard-translate ?\C-h ?\C-?))

(leaf autorevert
      :doc "revert buffers when files on disk change"
      :tag "builtin"
      :custom ((auto-revert-interval . 1))
      :global-minor-mode global-auto-revert-mode)

(leaf cc-mode
      :doc "major mode for editing C and similar languages"
      :tag "builtin"
      :defvar (c-basic-offset)
      :bind (c-mode-base-map
	     ("C-c c" . compile))
      :mode-hook
      (c-mode-hook . ((c-set-style "bsd")
		      (setq c-basic-offset 4)
		      (setq indent-tabs-mode nil)))
      (c++-mode-hook . ((c-set-style "bsd")
			(setq c-basic-offset 4)
			(setq indent-tabs-mode nil))))
(leaf delsel
      :doc "delete selection if you insert"
      :tag "builtin"
      :global-minor-mode delete-selection-mode)

(leaf paren
      :doc "highlight matching paren"
      :tag "builtin"
      :custom ((show-paren-delay . 0.1))
      :global-minor-mode show-paren-mode)

(leaf simple
      :doc "basic editing commands for Emacs"
      :tag "builtin" "internal"
      :custom ((kill-ring-max . 100)
	       (kill-read-only-ok . t)
	       (kill-whole-lne . t)
	       (eval-expression-print^length . nil)
	       (eval-expression-print-level . nil)))

(leaf files
      :doc "file input and output commands for Emacs"
      :tag "builtin"
      :custom `((auto-save-timeout . 15)
		(auto-save-interval . 60)
		(auto-save-file-name-tranforms . '((".*" , (locate-user-emacs-file "backup/") t)))
		(backup-directory-alist . '((".*" . ,(locate-user-emacs-file "backup"))
					    (,tramp-file-name-regexp . nil)))
		(version-control . t)
		(delete-old-versions . t)))

(leaf startup
      :doc "process Emacs shell arguments"
      :tag "builtin" "internal"
      :custom `((auto-save-list-file-prefix . ,(locate-user-emacs-file "backup/ .saves-"))))

(leaf ivy
      :doc "Incremental Vertical completion"
      :req "emacs-24.5"
      :tag "matching" "emacs>=24.5"
      :url "https://github.com/abo-abo/swiper"
      :emacs>= 24.5
      :ensure t
      :blackout t
      :leaf-defer nil
      :custom ((ivy-initial-inputs-alist . nil)
	       (ivy-use-selectable-prompt . t))
      :global-minor-mode t
      :config
      (leaf swiper
	    :doc "I search with an overview. Oh, man!"
	    :req "emacs-24.5" "ivy-0.13.0"
	    :tag "matching" "emacs>=24.5"
	    :url "https://github.com/abo-abo/swiper"
	    :emacs>= 24.5
	    :ensure t
	    :bind (("C-s" . swiper)))

      (leaf counsel
	    :doc "Various completion finctions using Ivy"
	    :req "emacs-24.5" "swiper-0.13.0"
	    :tag "tools" "matching" "convenience" "emacs>=24.5"
	    :url "https://github.com/abo-abo/swiper"
	    :emacs>= 24.5
	    :ensure t
	    :blackout t
	    :bind (("C-S-s" . counsel-imenu)
		   ("C-x C-r" . counsel-recentf))
	    :custom `((counsel-yank-pop-separator . "\n----------\n")
		      (counsel-find-file-ignore-regexp . ,(rx-to-string '(or  "./" "../") 'no-group)))
	    :global-minor-mode t))

(leaf prescient
  :doc "Better sorting and filtering"
  :req "emacs-25.1"
  :tag "extensions" "emacs>=25.1"
  :url "https://github.com/raxod502/prescient.el"
  :emacs>= 25.1
  :ensure t
  :custom ((prescient-aggressive-file-save . t))
  :global-minor-mode prescient-persist-mode)
  
(leaf ivy-prescient
  :doc "prescient.el + Ivy"
  :req "emacs-25.1" "prescient-4.0" "ivy-0.11.0"
  :tag "extensions" "emacs>=25.1"
  :url "https://github.com/raxod502/prescient.el"
  :emacs>= 25.1
  :ensure t
  :after prescient ivy
  :custom ((ivy-prescient-retain-classic-highlighting . t))
  :global-minor-mode t)

(leaf flycheck
  :doc "On-the-fly syntax checking"
  :req "dash-2.12.1" "pkg-info-0.4" "let-alist-1.0.4" "seq-1.11" "emacs-24.3"
  :tag "minor-mode" "tools" "languages" "convenience" "emacs>=24.3"
  :url "http://www.flycheck.org"
  :emacs>= 24.3
  :ensure t
  :bind (("M-n" . flycheck-next-error)
         ("M-p" . flycheck-previous-error))
  :global-minor-mode global-flycheck-mode)

(leaf company
  :doc "Modular text completion framework"
  :req "emacs-24.3"
  :tag "matching" "convenience" "abbrev" "emacs>=24.3"
  :url "http://company-mode.github.io/"
  :emacs>= 24.3
  :ensure t
  :blackout t
  :leaf-defer nil
  :bind ((company-active-map
          ("M-n" . nil)
          ("M-p" . nil)
          ("C-s" . company-filter-candidates)
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)
          ("<tab>" . company-complete-selection))
         (company-search-map
          ("C-n" . company-select-next)
          ("C-p" . company-select-previous)))
  :custom ((company-idle-delay . 0)
           (company-minimum-prefix-length . 1)
           (company-transformers . '(company-sort-by-occurrence)))
  :global-minor-mode global-company-mode)

(leaf company-c-headers
  :doc "Company mode backend for C/C++ header files"
  :req "emacs-24.1" "company-0.8"
  :tag "company" "development" "emacs>=24.1"
  :added "2020-03-25"
  :emacs>= 24.1
  :ensure t
  :after company
  :defvar company-backends
  :config
  (add-to-list 'company-backends 'company-c-headers))

;; Local Variables:
;; byte-compile-warnings: (not cl-functions obsolete)
;; End:
