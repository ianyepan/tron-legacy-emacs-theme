;;; tron-legacy-theme.el --- Custom Theme inspired by Tron: Legacy
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
;;; Code:
(deftheme tron-legacy
  "A theme by Ian Y.E. Pan. Licensed under GNU GPLv3.")

(custom-theme-set-faces
 `tron-legacy
 `(default ((t (:background "#000000" :foreground "#6A8397" ))))
 `(cursor ((t (:background "#b0ccdc"))))
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
 `(font-lock-comment-face ((t (:foreground "#B0CCDC" :background nil :italic t))))
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
 `(org-block ((t (:background "#20282F" :foreground "#839DB2"))))
 `(org-document-title ((t (:height 1.5 :foreground "#9bbdd6"))))
 `(org-level-1 ((t (:inherit outline-1 :weight bold :foreground "#94DCFE" :height 1.3))))
 `(org-level-2 ((t (:inherit outline-2 :weight bold :foreground "#80E3E2" :height 1.1))))
 `(org-level-3 ((t (:inherit outline-3 :weight bold :foreground "#528BD1" :height 1.1))))
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
 `(company-preview-common ((t (:foreground unspecified :background "#111111"))))
 `(company-scrollbar-bg ((t (:background "#111111"))))
 `(company-scrollbar-fg ((t (:background "#6a7488"))))
 `(company-tooltip ((t (:inherit default :background "#111111"))))
 `(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 `(company-tooltip-selection ((t (:inherit font-lock-keyword-face :background "#25272c" ))))
 `(centaur-tabs-selected ((t (:background "#111111" :foreground "#eef6ff" :box nil))))
 `(centaur-tabs-unselected ((t (:background "black" :foreground "#8899aa" :box nil))))
 `(centaur-tabs-selected-modified ((t (:background "#111111" :foreground ,"#CAECFE" :box nil))))
 `(centaur-tabs-unselected-modified ((t (:background "black" :foreground "#8899aa" :box nil))))
 `(centaur-tabs-active-bar-face ((t (:background "#cafcff" :box nil))))
 `(centaur-tabs-modified-marker-selected ((t (:inherit 'centaur-tabs-selected-modified :foreground "#cafcff" :box nil))))
 `(centaur-tabs-modified-marker-unselected ((t (:inherit 'centaur-tabs-unselected-modified :foreground "#cafcff" :box nil))))
 )

(provide-theme 'tron-legacy)
;;; tron-legacy-theme.el ends here
