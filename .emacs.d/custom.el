(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-revert-interval 1)
 '(auto-save-file-name-tranforms '((".*" "~/dotfiles/.emacs.d/backup/" t)) t)
 '(auto-save-interval 60)
 '(auto-save-list-file-prefix "~/dotfiles/.emacs.d/backup/ .saves-")
 '(auto-save-timeout 15)
 '(backup-directory-alist
   '((".*" . "~/dotfiles/.emacs.d/backup")
     ("^/\\(\\(?:\\([a-zA-Z0-9-]+\\):\\(?:\\([^/|: 	]+\\)@\\)?\\(\\(?:[a-zA-Z0-9_.%-]+\\|\\[\\(?:\\(?:[a-zA-Z0-9]*:\\)+[a-zA-Z0-9.]+\\)?]\\)\\(?:#[0-9]+\\)?\\)?|\\)+\\)?\\([a-zA-Z0-9-]+\\):\\(?:\\([^/|: 	]+\\)@\\)?\\(\\(?:[a-zA-Z0-9_.%-]+\\|\\[\\(?:\\(?:[a-zA-Z0-9]*:\\)+[a-zA-Z0-9.]+\\)?]\\)\\(?:#[0-9]+\\)?\\)?:\\([^
]*\\'\\)")))
 '(company-idle-delay 0)
 '(company-lsp-async nil)
 '(company-lsp-cache-candidates nil)
 '(company-lsp-enable-recompletion nil)
 '(company-minimum-prefix-length 1)
 '(company-transformers '(company-sort-by-occurrence))
 '(counsel-find-file-ignore-regexp "\\(?:\\.\\(?:\\.?/\\)\\)")
 '(counsel-yank-pop-separator "
----------
")
 '(create-lockfiles nil)
 '(custom-file "~/dotfiles/.emacs.d/custom.el")
 '(debug-on-error t)
 '(delete-old-versions t)
 '(enable-recursive-minibuffers t)
 '(eval-expression-print-level nil)
 '(eval-expression-print^length nil t)
 '(frame-resize-pixelwise t)
 '(history-delete-duplicates t)
 '(history-length 1000)
 '(indent-tabs-mode nil)
 '(init-file-debug t t)
 '(ivy-initial-inputs-alist nil)
 '(ivy-prescient-retain-classic-highlighting t)
 '(ivy-use-selectable-prompt t)
 '(kill-read-only-ok t)
 '(kill-ring-max 100)
 '(kill-whole-lne t t)
 '(lsp-prefer-flymake nil t)
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-doc-header nil)
 '(lsp-ui-doc-include-signature nil)
 '(lsp-ui-doc-max-width nil)
 '(lsp-ui-doc-position nil)
 '(lsp-ui-doc-use-childframe nil)
 '(lsp-ui-doc-use-webkit nil)
 '(lsp-ui-flycheck-enable nil t)
 '(lsp-ui-pee-list-width nil t)
 '(lsp-ui-peek-enable nil)
 '(lsp-ui-peek-fontify nil)
 '(lsp-ui-peek-peek-height nil)
 '(mouse-wheel-scroll-amount '(1 ((control) . 5)))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpha" . "https://melpa.org/packages/")
     ("org" . "https://orgmode.org/elpa/")))
 '(package-selected-packages
   '(which-key yasnippet markdown-preview-mode lsp-ui leaf-keywords ivy-prescient iceberg-theme hydra helm-lsp flycheck el-get counsel company-lsp company-c-headers blackout))
 '(prescient-aggressive-file-save t)
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100)
 '(scroll-margin nil)
 '(scroll-preserve-screen-position t)
 '(show-paren-delay 0.1)
 '(text-quoting-style 'straight)
 '(truncate-lines t)
 '(user-full-name "Makoto Teramoto")
 '(user-login-name "Joshishi" t)
 '(user-mail-address "mteramoto.knct@gmail.com")
 '(version-control t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
