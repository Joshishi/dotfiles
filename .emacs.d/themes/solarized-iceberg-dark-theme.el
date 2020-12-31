(require 'solarized)
(deftheme solarized-iceberg-dark "The solarized-iceberg-dark colour theme of Solarized colour theme flavor.")
(solarized-with-color-variables 'dark 'solarized-iceberg-dark
  '((base03 . "#161721")
    (base02 . "#1a1c25")
    (base01 . "#4d4e58")
    (base00 . "#555761")
    (base0 . "#6a6c76")
    (base1 . "#757781")
    (base2 . "#babcc5")
    (base3 . "#c6c7d1")
    (yellow . "#e2a478")
    (orange . "#e27878")
    (red . "#e27878")
    (magenta . "#a093c7")
    (violet . "#b4be82")
    (blue . "#84a0c6")
    (cyan . "#89b8c2")
    (green . "#84a0c6")
    (yellow-d . "#3a3031")
    (yellow-l . "#cec0be")
    (orange-d . "#3b2931")
    (orange-l . "#cfb8be")
    (red-d . "#3b2931")
    (red-l . "#cfb8be")
    (magenta-d . "#2e2d3e")
    (magenta-l . "#bebdcf")
    (violet-d . "#323433")
    (violet-l . "#c3c5c1")
    (blue-d . "#292f3d")
    (blue-l . "#b9bfce")
    (cyan-d . "#2a333d")
    (cyan-l . "#bac4cd")
    (green-d . "#292f3d")
    (green-l . "#b9bfce")
    (yellow-1bg . "#312a2d")
    (orange-1bg . "#31252c")
    (red-1bg . "#31252c")
    (magenta-1bg . "#272836")
    (blue-1bg . "#242936")
    (cyan-1bg . "#252c35")
    (green-1bg . "#242936")
    (violet-1bg . "#2b2d2e")
    (yellow-1fg . "#dcae92")
    (orange-1fg . "#dd9191")
    (red-1fg . "#dd9191")
    (magenta-1fg . "#aba2ca")
    (violet-1fg . "#bac099")
    (blue-1fg . "#98abc9")
    (cyan-1fg . "#9cbcc6")
    (green-1fg . "#98abc9")
    (yellow-2bg . "#614a42")
    (orange-2bg . "#623c41")
    (red-2bg . "#623c41")
    (magenta-2bg . "#48455d")
    (violet-2bg . "#505345")
    (blue-2bg . "#3e495d")
    (cyan-2bg . "#40525b")
    (green-2bg . "#3e495d")
    (yellow-2fg . "#d8b49f")
    (orange-2fg . "#da9d9f")
    (red-2fg . "#da9d9f")
    (magenta-2fg . "#b1aacb")
    (violet-2fg . "#bdc2a5")
    (blue-2fg . "#a2b1cb")
    (cyan-2fg . "#a5bfc8")
    (green-2fg . "#a2b1cb"))
  '((custom-theme-set-faces theme-name
                            `(default
                               ((,class
                                 (:foreground ,base3 :background ,base03))))
                            `(vertical-border
                              ((,class
                                (:foreground ,base03))))
                            `(mode-line
                              ((,class
                                (:foreground ,base2 :background ,base02))))
                            `(mode-line-inactive
                              ((,class
                                (:foreground ,base0 :background ,base03))))
                            `(font-lock-comment-delimiter-face
                              ((,class
                                (:foreground "#6b7089"))))
                            `(font-lock-comment-face
                              ((,class
                                (:foreground "#6b7089"))))
                            `(font-lock-preprocessor-face
                              ((,class
                                (:foreground ,green))))
                            `(font-lock-type-face
                              ((,class
                                (:foreground ,cyan))))
                            `(font-lock-builtin-face
                              ((,class
                                (:foreground ,green))))
                            `(diff-function
                              ((,class
                                (:foreground ,violet-1fg))))
                            `(diff-header
                              ((,class
                                (:foreground ,green))))
                            `(diff-hunk-header
                              ((,class
                                (:foreground ,green))))
                            `(diff-file-header
                              ((,class
                                (:background ,base03 :foreground ,green))))
                            `(diff-added
                              ((,class
                                (:background ,violet-1bg :foreground ,violet-1fg))))
                            `(diff-indicator-added
                              ((t
                                (:foreground ,violet))))
                            `(markdown-header-face
                              ((,class
                                (:foreground ,yellow))))
                            `(markdown-header-rule-face
                              ((,class
                                (:foreground ,green))))
                            `(markdown-markup-face
                              ((,class
                                (:inherit default))))
                            `(markdown-url-face
                              ((,class
                                (:foreground ,magenta))))
                            `(markdown-link-face
                              ((,class
                                (:foreground ,green :underline t))))
                            `(markdown-inline-code-face
                              ((,class
                                (:foreground ,cyan))))
                            `(markdown-pre-face
                              ((,class
                                (:foreground ,cyan))))
                            `(sh-quoted-exec
                              ((,class
                                (:foreground ,violet))))
                            `(haskell-type-face
                              ((,class
                                (:inherit default))))
                            `(haskell-constructor-face
                              ((,class
                                (:inherit default))))
                            `(haskell-operator-face
                              ((,class
                                (:foreground ,green))))
                            `(haskell-definition-face
                              ((,class
                                (:inherit default))))
                            `(web-mode-block-delimiter-face
                              ((,class
                                (:inherit default))))
                            `(web-mode-html-attr-value-face
                              ((,class
                                (:foreground ,cyan))))
                            `(web-mode-mode-type-face
                              ((,class
                                (:inherit default))))
                            `(web-mode-function-call-face
                              ((,class
                                (:inherit default))))
                            `(web-mode-keyword-face
                              ((,class
                                (:foreground ,green))))
                            `(web-mode-constant-face
                              ((,class
                                (:foreground ,cyan))))
                            `(web-mode-variable-name-face
                              ((,class
                                (:foreground ,cyan))))
                            `(web-mode-html-tag-bracket-face
                              ((,class
                                (:foreground ,green))))
                            `(org-verbatim
                              ((,class
                                (:foreground ,cyan))))
                            `(php-php-tag
                              ((,class
                                (:inherit default))))
                            `(php-constant
                              ((,class
                                (:inherit default))))
                            `(php-paamayim-nekudotayim
                              ((,class
                                (:foreground ,green))))
                            `(php-object-op
                              ((,class
                                (:foreground ,cyan))))
                            `(php-variable-name
                              ((,class
                                (:foreground ,cyan))))
                            `(php-variable-sigil
                              ((,class
                                (:foreground ,cyan)))))))
(provide-theme 'solarized-iceberg-dark)
(provide 'solarized-iceberg-dark-theme)
