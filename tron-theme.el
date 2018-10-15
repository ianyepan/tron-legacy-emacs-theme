;;; tron-theme.el --- Custom Theme inspired by Tron: Legacy
;;
;;  Copyright© 2018 Ian Y.E. Pan
;;  Licensed under GNU GPLv3
;;
;;  This program is free software: you can redistribute it and/or modify
;;  it under the terms of the GNU General Public License as published by
;;  the Free Software Foundation, either version 3 of the License, or
;;  (at your option) any later version.
;;
;;  This program is distributed in the hope that it will be useful,
;;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;  GNU General Public License for more details.
;;
;;  You should have received a copy of the GNU General Public License
;;  along with this program.  If not, see <https://www.gnu.org/licenses/>.
;;
;;  Author: Ian Y.E. Pan
;;
;;; Commentary:
;;  Apart from ``the Emacs scene'' in the 2010 Tron film, the colorscheme is
;;  heavily inspired by Base16-BlackMetal, Doom, Grayscale and City Lights.
;;
;;
;;  Invoking theme:
;;  Put this file in "~/.emacs.d/themes/"
;;  Add these two lines in your init file:
;;
;;      (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;      (load-theme `tron t)
;;
;;; Code:
(deftheme tron
  "A theme by Ian Y.E. Pan. Licensed under GNU GPLv3.")

(custom-theme-set-faces
 `tron
 `(default ((t (:background "#000000" :foreground "#6A8397" ))))
 `(cursor ((t (:background "#D7F0Ff"))))
 `(region ((t (:background "#3E5668"))))
 `(bold ((t (:weight normal :foreground "DarkGoldenrod2"))))
 `(fringe ((t (:background "#000000"))))
 `(mode-line ((t (:foreground "#CBECFF" :background "#3D5666"))))
 `(mode-line-inactive ((t (:foreground "#444444" :background "#1e1e1e"))))
 `(highlight ((t (:background "#262F36"))))
 `(ido-first-match ((t (:foreground "#D7F0Ff" :weight bold))))
 `(ido-only-match ((t (:foreground "#31C0C0"))))
 `(ido-subdir ((t (:foreground "#5DC4FF"))))
 `(isearch ((t (:background "#4D4FBB" :foreground "#fffafa"))))
 `(lazy-highlight ((t (:background "#659f93" :foreground "#fffafa"))))
 `(linum ((t (:background "#000000" :foreground "#36424C"))))
 `(nlinum-relative-current-face ((t (:inherit linum :background "#000000" :foreground "#c6c6c6" :weight normal))))
 `(font-lock-builtin-face ((t (:foreground "#5FC4FF"))))
 `(font-lock-doc-face ((t (:foreground "#828D9C" :italic t))))
 `(font-lock-comment-face ((t (
                               :foreground "#CBEBFF"
                               :background nil
                               :italic t))))
 `(font-lock-string-face ((t (:foreground "#387AAA"))))
 `(font-lock-variable-name-face ((t (:foreground "#9BBDD6"))))
 `(font-lock-function-name-face ((t (:foreground "#4BB5BE"))))
 `(font-lock-keyword-face ((t (:foreground "#5EC4FF"))))
 `(font-lock-negation-char-face ((t (:foreground "#5EC4FF"))))
 `(font-lock-preprocessor-face ((t (:foreground "#5EC4FF"))))
 `(font-lock-type-face ((t (:foreground"#DEB45B"))))

 `(font-lock-constant-face ((t (:foreground "#B62D66"))))
 `(minibuffer-prompt ((t (:foreground "#729fcf" ))))
 `(font-lock-warning-face ((t (:foreground "red" :bold t))))
 `(dashboard-banner-logo-title-face ((t (
                                         :inherit default
                                         :overline t
                                         :height 1.15
                                         :family "Monaco"))))
 `(dashboard-heading-face ((t (
                               :inherit default
                               :foreground "#CBEBFF"
                               :height 1.1))))
 `(org-block ((t (:background "#20282F" :foreground "#839DB2"))))
 `(org-document-title ((t (:height 2.0 :foreground "#9bbdd6"
                                   :family "Georgia"))))
 `(org-level-1 ((t (
                    :inherit outline-1
                    :weight bold
                    :foreground "#94DCFE"
                    :height 1.3))))
 `(org-level-2 ((t (
                    :inherit outline-2
                    :weight bold
                    :foreground "#80E3E2"
                    :height 1.1))))
 `(org-level-3 ((t (
                    :inherit outline-3
                    :weight bold
                    :foreground "#528BD1"
                    :height 1.1))))
 `(org-table ((t (:background "#002831" :foreground "#9bbdd6"))))

 `(rainbow-delimiters-depth-1-face ((t (:foreground "#80E3E2"))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground "#6BB9FE"))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground "#B5DEFF"))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground "#80E3E2"))))
 `(rainbow-delimiters-depth-5-face ((t (:foreground "#6BB9FE"))))
 `(rainbow-delimiters-depth-6-face ((t (:foreground "#B5DEFF"))))
 `(rainbow-delimiters-depth-7-face ((t (:foreground "#80E3E2"))))
 `(rainbow-delimiters-depth-8-face ((t (:foreground "#6BB9FE"))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground "#B5DEFF"))))

 )

(provide-theme 'tron)
;;; tron-theme.el ends here
