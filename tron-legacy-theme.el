;;; tron-legacy-theme.el --- An original retro-futuristic theme inspired by Tron: Legacy -*- lexical-binding: t; -*-

;; Copyright (C) 2018-2020 Ian Y.E. Pan

;; Author: Ian Y.E. Pan
;; URL: https://github.com/ianpan870102/tron-legacy-emacs-theme
;; Version: 2.0.0

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <https://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:
;; An original theme for Emacs 24+ inspired by the look and feel of Tron: Legacy,
;; with further inspirations drawn from Base16-Black-Metal, Grayscale and City Lights.

;;; Code:

(defgroup tron-legacy-theme nil
  "Options for tron-legacy theme."
  :group 'faces)

(defcustom tron-legacy-theme-dark-fg-bright-comments nil
  "If non-nil, default foreground will be dimmed and comments will be boosted to be brighter than the normal foreground."
  :group 'tron-legacy-theme
  :type 'boolean)

(defcustom tron-legacy-theme-vivid-cursor nil
  "If non-nil, the cursor will be bright golden, making it easier to spot."
  :group 'tron-legacy-theme
  :type 'boolean)

(defcustom tron-legacy-theme-softer-bg nil
  "If non-nil, the contrast of the background will be slightly lower, instead of being pure black."
  :group 'tron-legacy-theme
  :type 'boolean)

(deftheme tron-legacy)
(let ((class '((class color) (min-colors 89)))
      (fg0               "#90ACBC")
      (fg1               (if tron-legacy-theme-dark-fg-bright-comments "#5A7387" "#B0CCDC")) ; default fg
      (fg2               "#BBCCDD")
      (fg3               "#BBF0EF")
      (fg4               "#CBECFF")
      (bg0               "#000000")
      (bg1               (if tron-legacy-theme-softer-bg "#17181b" "#000000")) ; default bg
      (bg2               (if tron-legacy-theme-softer-bg "#192533" "#0E1926"))
      (bg3               "#1B324B")
      (bg4               "#2B4255")
      (hl-line           "#0E2638") ; hl-line
      (bg-hl             "#2B4255") ; region, selection
      (vc-r              "#B62D66")
      (vc-g              "#4BB5BE")
      (vc-b              "#387AAA")
      (key2              "#9BBDD6")
      (key3              "#AAAAAA")
      (accent            "#FFFFFF")
      (numeric           "#4BB5BE")
      (mode-line-bg      "#3D5666")
      (mode-line-bg-dark "#1E1E1E")
      (line-num          "#5A7387")
      (cursor            (if tron-legacy-theme-vivid-cursor "#DEB45B" "#B0CCDC"))
      (builtin           "#8Fd4FF")
      (keyword           "#8Fd4FF")
      (const             "#BBF0EF")
      (comment           (if tron-legacy-theme-dark-fg-bright-comments "#B0CCDC" "#5A7387"))
      (doc               "#6A8397")
      (type              "#4BB5BE")
      (str               "#387AAA")
      (func              "#DEB45B")
      (var               (if tron-legacy-theme-dark-fg-bright-comments "#5A7387" "#B0CCDC")) ; var = fg
      (warning           "#FF7DBB")

      ;; standardized palette
      (tron-yellow         "#DEB45B")
      (tron-bluegreen      "#4BB5BE")
      (tron-magenta        "#B62D66")
      (tron-orange         "#DEB45B")
      (tron-red            "#B62D66")
      (tron-blue           "#8Fd4FF")
      (tron-green          "#4BB5BE")
      (tron-lightred       "#FF7DBB")
      (tron-lightblue      "#A0DCFF")
      (tron-lightgreen     "#BBF0EF")
      (tron-red-bg         "#361016")
      (tron-blue-bg        "#040E3F")
      (tron-green-bg       "#03353E")
      (tron-red-bghl       "#462026")
      (tron-blue-bghl      "#141E4F")
      (tron-green-bghl     "#13454E"))

  (custom-theme-set-faces
   'tron-legacy
   `(default                                  ((,class (:background ,bg1 :foreground ,fg1))))

   ;;;;; Font lock basics
   `(font-lock-builtin-face                   ((,class (:foreground ,builtin))))
   `(font-lock-comment-face                   ((,class (:foreground ,comment :italic t))))
   `(font-lock-negation-char-face             ((,class (:foreground ,const))))
   `(font-lock-reference-face                 ((,class (:foreground ,const))))
   `(font-lock-constant-face                  ((,class (:foreground ,const))))
   `(font-lock-doc-face                       ((,class (:foreground ,doc))))
   `(font-lock-function-name-face             ((,class (:foreground ,func :bold nil))))
   `(font-lock-keyword-face                   ((,class (:bold nil :foreground ,keyword))))
   `(font-lock-string-face                    ((,class (:foreground ,str))))
   `(font-lock-type-face                      ((,class (:foreground ,type ))))
   `(font-lock-variable-name-face             ((,class (:foreground ,var))))
   `(font-lock-warning-face                   ((,class (:foreground ,warning :background ,bg2))))

   ;;;;; More built-in UI
   `(region                                   ((,class (:background ,bg-hl :distant-foreground ,fg0 :extend nil))))
   `(highlight                                ((,class (:foreground ,fg3 :background unspecified :underline t)))) ; link hover
   `(hl-line                                  ((,class (:background ,hl-line))))
   `(fringe                                   ((,class (:background ,bg1 :foreground ,fg4))))
   `(cursor                                   ((,class (:background ,cursor))))
   `(show-paren-match-face                    ((,class (:background ,warning))))
   `(show-paren-match                         ((t (:foreground ,accent :background ,bg4 :bold t))))
   `(show-paren-mismatch                      ((t (:background ,warning))))
   `(isearch                                  ((,class (:bold nil :foreground ,accent :background ,bg4))))
   `(vertical-border                          ((,class (:foreground ,fg4))))
   `(minibuffer-prompt                        ((,class (:foreground ,tron-bluegreen :weight normal))))
   `(default-italic                           ((,class (:italic t))))
   `(link                                     ((,class (:foreground ,const :underline t))))
   `(error                                    ((,class (:foreground ,tron-lightred))))
   `(warning                                  ((,class (:foreground ,tron-yellow))))
   `(success                                  ((,class (:foreground ,tron-bluegreen))))
   `(dired-directory                          ((t (:inherit font-lock-keyword-face))))
   `(line-number                              ((,class (:foreground ,line-num :background unspecified))))
   `(line-number-current-line                 ((,class (:foreground ,fg1 :background unspecified))))
   `(trailing-whitespace                      ((,class :foreground unspecified :background ,warning)))
   `(lazy-highlight                           ((,class (:foreground ,fg2 :background ,bg3))))

   ;;;;; which-func
   `(which-func                               ((t (:foreground ,tron-orange))))

   ;;;;; mode-line tweaks
   `(mode-line                                ((,class (:bold nil :foreground ,fg4 :background ,mode-line-bg))))
   `(mode-line-inactive                       ((,class (:bold nil :foreground ,fg0 :background ,mode-line-bg-dark))))
   `(mode-line-buffer-id                      ((,class (:bold nil :foreground ,fg4 :background unspecified))))
   `(mode-line-highlight                      ((,class (:foreground ,keyword :box nil :weight normal))))
   `(mode-line-emphasis                       ((,class (:foreground ,fg1))))

   ;;;;; Company
   `(company-preview-common                   ((t (:foreground unspecified :background ,bg2))))
   `(company-scrollbar-bg                     ((t (:background ,bg2))))
   `(company-scrollbar-fg                     ((t (:background ,bg3))))
   `(company-tooltip                          ((t (:inherit default :background ,bg2))))
   `(company-tooltip-common                   ((t (:foreground ,tron-blue :bold t))))
   `(company-tooltip-selection                ((t (:background ,bg-hl))))
   `(company-tooltip-annotation               ((t (:foreground ,doc)))) ; parameter hints etc.
   `(company-template-field                   ((t (:foreground ,fg1 :background ,bg-hl))))

   ;;;;; Org mode
   `(org-document-title                       ((,class (:foreground ,type :height 1.2 :bold t))))
   `(org-level-1                              ((,class (:bold nil :foreground ,tron-bluegreen :height 1.1))))
   `(org-level-2                              ((,class (:bold nil :foreground ,tron-yellow))))
   `(org-level-3                              ((,class (:bold nil :foreground ,tron-blue))))
   `(org-level-4                              ((,class (:bold nil :foreground ,tron-bluegreen))))
   `(org-code                                 ((,class (:foreground ,fg2))))
   `(org-hide                                 ((,class (:foreground ,fg4))))
   `(org-date                                 ((,class (:underline t :foreground ,var) )))
   `(org-footnote                             ((,class (:underline t :foreground ,fg4))))
   `(org-link                                 ((,class (:underline t :foreground ,type ))))
   `(org-special-keyword                      ((,class (:foreground ,tron-green))))
   `(org-block                                ((,class (:foreground ,fg2 :background ,bg2 :extend t))))
   `(org-quote                                ((,class (:inherit org-block :slant italic))))
   `(org-verse                                ((,class (:inherit org-block :slant italic))))
   `(org-todo                                 ((,class (:box (:line-width 1 :color ,tron-lightred)
                                                        :foreground ,tron-lightred))))
   `(org-done                                 ((,class (:box (:line-width 1 :color ,tron-lightgreen)
                                                        :foreground ,tron-lightgreen))))
   `(org-warning                              ((,class (:underline t :foreground ,warning))))
   `(org-agenda-structure                     ((,class (:weight normal :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
   `(org-agenda-date                          ((,class (:foreground ,var :height 1.1 ))))
   `(org-agenda-date-weekend                  ((,class (:weight normal :foreground ,fg4))))
   `(org-agenda-date-today                    ((,class (:weight normal :foreground ,keyword :height 1.2))))
   `(org-agenda-done                          ((,class (:foreground ,bg4))))
   `(org-scheduled                            ((,class (:foreground ,type))))
   `(org-scheduled-today                      ((,class (:foreground ,func :weight normal :height 1.2))))
   `(org-ellipsis                             ((,class (:foreground ,builtin))))
   `(org-verbatim                             ((,class (:foreground ,fg4))))
   `(org-document-info-keyword                ((,class (:foreground ,tron-green))))
   `(org-sexp-date                            ((,class (:foreground ,fg4))))

   ;;;;; LaTeX
   `(font-latex-bold-face                     ((,class (:foreground ,type))))
   `(font-latex-italic-face                   ((,class (:foreground ,key3 :italic t))))
   `(font-latex-string-face                   ((,class (:foreground ,str))))
   `(font-latex-match-reference-keywords      ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords       ((,class (:foreground ,var))))

   ;;;;; Ido mode
   `(ido-only-match                           ((,class (:foreground ,keyword))))
   `(ido-subdir                               ((,class (:weight normal :foreground ,fg0))))
   `(ido-first-match                          ((,class (:foreground ,keyword :bold nil))))

   ;;;;; Gnus
   `(gnus-header-content                      ((,class (:foreground ,keyword))))
   `(gnus-header-from                         ((,class (:foreground ,var))))
   `(gnus-header-name                         ((,class (:foreground ,type))))
   `(gnus-header-subject                      ((,class (:foreground ,func :bold nil))))

   ;;;;; Mu4e
   `(mu4e-view-url-number-face                ((,class (:foreground ,type))))
   `(mu4e-cited-1-face                        ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face                        ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face                   ((,class (:foreground ,type))))

   ;;;;; FFAP
   `(ffap                                     ((,class (:foreground ,fg4))))

   ;;;;; js2 & js3
   `(js2-private-function-call                ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter             ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name                  ((,class (:foreground ,key2))))
   `(js2-external-variable                    ((,class (:foreground ,type  ))))
   `(js2-function-param                       ((,class (:foreground ,const))))
   `(js2-jsdoc-value                          ((,class (:foreground ,str))))
   `(js2-private-member                       ((,class (:foreground ,fg3))))
   `(js2-warning                              ((t (:underline ,warning))))
   `(js2-error                                ((t (:foreground ,warning :weight normal))))
   `(js2-jsdoc-tag                            ((t (:foreground ,var))))
   `(js2-jsdoc-type                           ((t (:foreground ,var))))
   `(js2-instance-member                      ((t (:foreground ,var))))
   `(js2-object-property                      ((t (:foreground ,func))))
   `(js2-magic-paren                          ((t (:foreground ,const))))
   `(js2-function-call                        ((t (:foreground ,const))))
   `(js2-keywords                             ((t (:foreground ,keyword))))
   `(js3-warning-face                         ((,class (:underline ,keyword))))
   `(js3-error-face                           ((,class (:underline ,warning))))
   `(js3-external-variable-face               ((,class (:foreground ,var))))
   `(js3-function-param-face                  ((,class (:foreground ,key3))))
   `(js3-jsdoc-tag-face                       ((,class (:foreground ,keyword))))
   `(js3-instance-member-face                 ((,class (:foreground ,const))))

   ;;;;; Auto-complete
   `(ac-completion-face                       ((,class (:underline t :foreground ,keyword))))

   ;;;;; Misc
   `(info-quoted-name                         ((,class (:foreground ,builtin))))
   `(info-string                              ((,class (:foreground ,str))))
   `(icompletep-determined                    ((,class :foreground ,builtin)))

   ;;;;; Slime
   `(slime-repl-inputed-output-face           ((,class (:foreground ,type))))

   ;;;;; Undo tree
   `(undo-tree-visualizer-current-face        ((,class :foreground ,builtin)))
   `(undo-tree-visualizer-default-face        ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-unmodified-face     ((,class :foreground ,var)))
   `(undo-tree-visualizer-register-face       ((,class :foreground ,type)))

   ;;;;; Rainbow delimiters
   `(rainbow-delimiters-depth-1-face          ((,class :foreground "#BBECEF")))
   `(rainbow-delimiters-depth-2-face          ((,class :foreground "#BBCCDD")))
   `(rainbow-delimiters-depth-3-face          ((,class :foreground "#8Fd4FF")))
   `(rainbow-delimiters-depth-4-face          ((,class :foreground "#BBECEF")))
   `(rainbow-delimiters-depth-5-face          ((,class :foreground "#BBCCDD")))
   `(rainbow-delimiters-depth-6-face          ((,class :foreground "#8Fd4FF")))
   `(rainbow-delimiters-depth-7-face          ((,class :foreground "#BBECEF")))
   `(rainbow-delimiters-depth-8-face          ((,class :foreground "#BBCCDD")))
   `(rainbow-delimiters-depth-9-face          ((,class :foreground "#8Fd4FF")))
   `(rainbow-delimiters-unmatched-face        ((,class :foreground ,warning)))

   ;;;;; Magit
   `(magit-item-highlight                     ((,class (:background ,bg3))))
   `(magit-hunk-heading                       ((,class (:background ,bg3))))
   `(magit-hunk-heading-highlight             ((,class (:background ,bg3))))
   `(magit-bisect-bad                         ((t (:foreground ,tron-red))))
   `(magit-bisect-good                        ((t (:foreground ,tron-green))))
   `(magit-bisect-skip                        ((t (:foreground ,tron-orange))))
   `(magit-blame-date                         ((t (:foreground ,tron-red))))
   `(magit-blame-heading                      ((t (:foreground ,tron-orange :background ,bg3 :extend t))))
   `(magit-branch                             ((,class (:foreground ,tron-blue :weight normal))))
   `(magit-branch-current                     ((t (:foreground ,tron-blue))))
   `(magit-branch-local                       ((t (:foreground ,tron-bluegreen))))
   `(magit-branch-remote                      ((t (:foreground ,tron-green))))
   `(magit-cherry-equivalent                  ((t (:foreground ,tron-magenta))))
   `(magit-cherry-unmatched                   ((t (:foreground ,tron-bluegreen))))
   `(magit-diff-added                         ((t (:foreground ,tron-green :background ,tron-green-bg :extend t))))
   `(magit-diff-added-highlight               ((t (:foreground ,tron-lightgreen :background ,tron-green-bghl :extend t))))
   `(magit-diff-removed                       ((t (:foreground ,tron-red :background ,tron-red-bg :extend t))))
   `(magit-diff-removed-highlight             ((t (:foreground ,tron-lightred :background ,tron-red-bghl :extend t))))
   `(magit-diff-base                          ((t (:foreground ,bg1 :background ,tron-red :extend t))))
   `(magit-diff-base-highlight                ((t (:foreground ,tron-red :background ,bg3 :extend t))))
   `(magit-diff-context                       ((t (:foreground ,comment :extend t))))
   `(magit-diff-file-header                   ((,class (:foreground ,fg2 :background ,bg3))))
   `(magit-diff-file-heading                  ((t (:foreground ,fg1 :extend t))))
   `(magit-diff-file-heading-highlight        ((t (:background ,bg3 :extend t))))
   `(magit-diff-file-heading-selection        ((t (:foreground ,tron-red :background ,bg3 :extend t))))
   `(magit-diff-hunk-heading                  ((t (:foreground ,fg1 :background ,bg3 :extend t))))
   `(magit-diff-hunk-heading-highlight        ((t (:background ,bg3 :extend t))))
   `(magit-diff-lines-heading                 ((t (:foreground ,tron-yellow :background ,tron-red :extend t))))
   `(magit-diff-context-highlight             ((,class (:background ,bg2 :foreground ,fg2))))
   `(magit-diffstat-added                     ((t (:foreground ,tron-green))))
   `(magit-diffstat-removed                   ((t (:foreground ,tron-orange))))
   `(magit-dimmed                             ((t (:foreground ,comment))))
   `(magit-filename                           ((t (:foreground ,tron-magenta))))
   `(magit-hash                               ((t (:foreground ,comment))))
   `(magit-header-line                        ((t (:inherit nil))))
   `(magit-log-author                         ((t (:foreground ,tron-orange))))
   `(magit-log-date                           ((t (:foreground ,tron-blue))))
   `(magit-log-graph                          ((t (:foreground ,comment))))
   `(magit-mode-line-process                  ((t (:foreground ,tron-orange))))
   `(magit-mode-line-process-error            ((t (:foreground ,tron-red))))
   `(magit-process-ok                         ((t (:inherit success))))
   `(magit-process-ng                         ((t (:inherit error))))
   `(magit-reflog-amend                       ((t (:foreground ,tron-magenta))))
   `(magit-reflog-checkout                    ((t (:foreground ,tron-blue))))
   `(magit-reflog-cherry-pick                 ((t (:foreground ,tron-green))))
   `(magit-reflog-commit                      ((t (:foreground ,tron-green))))
   `(magit-reflog-merge                       ((t (:foreground ,tron-green))))
   `(magit-reflog-other                       ((t (:foreground ,tron-bluegreen))))
   `(magit-reflog-rebase                      ((t (:foreground ,tron-magenta))))
   `(magit-reflog-remote                      ((t (:foreground ,tron-bluegreen))))
   `(magit-reflog-reset                       ((t (:inherit error))))
   `(magit-refname                            ((t (:foreground ,comment))))
   `(magit-section-heading                    ((t (:foreground ,tron-yellow))))
   `(magit-section-heading-selection          ((t (:foreground ,tron-orange :extend t))))
   `(magit-section-highlight                  ((t (:background ,bg3 :extend t))))
   `(magit-sequence-drop                      ((t (:foreground ,tron-red))))
   `(magit-sequence-head                      ((t (:foreground ,tron-blue))))
   `(magit-sequence-part                      ((t (:foreground ,tron-orange))))
   `(magit-sequence-stop                      ((t (:foreground ,tron-green))))
   `(magit-signature-bad                      ((t (:inherit error))))
   `(magit-signature-error                    ((t (:inherit error))))
   `(magit-signature-expired-key              ((t (:foreground ,tron-orange))))
   `(magit-signature-good                     ((t (:inherit success))))
   `(magit-signature-revoked                  ((t (:foreground ,tron-magenta))))
   `(magit-signature-untrusted                ((t (:foreground ,tron-bluegreen))))
   `(magit-tag                                ((t (:foreground ,tron-yellow))))

   ;;;; term-mode (vterm too)
   `(term                                     ((,class (:foreground ,fg1 :background ,bg1))))
   `(term-color-black                         ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue                          ((,class (:foreground ,tron-blue :background ,tron-blue))))
   `(term-color-red                           ((,class (:foreground ,tron-red :background ,tron-red))))
   `(term-color-green                         ((,class (:foreground ,tron-green :background ,tron-green))))
   `(term-color-yellow                        ((,class (:foreground ,tron-yellow :background ,tron-yellow))))
   `(term-color-magenta                       ((,class (:foreground ,tron-magenta :background ,tron-magenta))))
   `(term-color-cyan                          ((,class (:foreground ,tron-bluegreen :background ,tron-bluegreen))))
   `(term-color-white                         ((,class (:foreground ,fg2 :background ,fg2))))

   ;;;;; diredfl
   `(diredfl-autofile-name                    ((t (:foreground ,fg0))))
   `(diredfl-compressed-file-name             ((t (:foreground ,tron-yellow))))
   `(diredfl-compressed-file-suffix           ((t (:foreground ,doc))))
   `(diredfl-date-time                        ((t (:foreground ,tron-bluegreen))))
   `(diredfl-deletion                         ((t (:foreground ,tron-red :bold t))))
   `(diredfl-deletion-file-name               ((t (:foreground ,tron-red ))))
   `(diredfl-dir-heading                      ((t (:foreground ,tron-blue :bold t))))
   `(diredfl-dir-name                         ((t (:foreground ,tron-blue))))
   `(diredfl-dir-priv                         ((t (:foreground ,tron-blue))))
   `(diredfl-exec-priv                        ((t (:foreground ,tron-green))))
   `(diredfl-executable-tag                   ((t (:foreground ,tron-green))))
   `(diredfl-file-name                        ((t (:foreground ,fg1))))
   `(diredfl-file-suffix                      ((t (:foreground ,doc))))
   `(diredfl-flag-mark                        ((t (:foreground ,tron-yellow :bold t))))
   `(diredfl-ignored-file-name                ((t (:foreground ,doc))))
   `(diredfl-link-priv                        ((t (:foreground ,tron-magenta))))
   `(diredfl-no-priv                          ((t (:foreground ,fg1))))
   `(diredfl-number                           ((t (:foreground ,tron-orange))))
   `(diredfl-other-priv                       ((t (:foreground ,tron-magenta))))
   `(diredfl-rare-priv                        ((t (:foreground ,fg1))))
   `(diredfl-read-priv                        ((t (:foreground ,tron-yellow))))
   `(diredfl-symlink                          ((t (:foreground ,tron-magenta))))
   `(diredfl-tagged-autofile-name             ((t (:foreground ,fg0))))
   `(diredfl-write-priv                       ((t (:foreground ,tron-red))))

   ;;;;; Helm
   `(helm-header                              ((,class (:foreground ,fg2 :background ,bg1 :underline nil :box nil))))
   `(helm-source-header                       ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight normal))))
   `(helm-selection                           ((,class (:background ,bg2 :underline nil))))
   `(helm-selection-line                      ((,class (:background ,bg2))))
   `(helm-visible-mark                        ((,class (:foreground ,bg1 :background ,bg3))))
   `(helm-candidate-number                    ((,class (:foreground ,bg1 :background ,fg1))))
   `(helm-separator                           ((,class (:foreground ,type :background ,bg1))))
   `(helm-time-zone-current                   ((,class (:foreground ,builtin :background ,bg1))))
   `(helm-time-zone-home                      ((,class (:foreground ,type :background ,bg1))))
   `(helm-buffer-not-saved                    ((,class (:foreground ,type :background ,bg1))))
   `(helm-buffer-process                      ((,class (:foreground ,builtin :background ,bg1))))
   `(helm-buffer-saved-out                    ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-buffer-size                         ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-ff-directory                        ((,class (:foreground ,func :background ,bg1 :weight normal))))
   `(helm-ff-file                             ((,class (:foreground ,fg1 :background ,bg1 :weight normal))))
   `(helm-ff-executable                       ((,class (:foreground ,key2 :background ,bg1 :weight normal))))
   `(helm-ff-invalid-symlink                  ((,class (:foreground ,key3 :background ,bg1 :weight normal))))
   `(helm-ff-symlink                          ((,class (:foreground ,keyword :background ,bg1 :weight normal))))
   `(helm-ff-prefix                           ((,class (:foreground ,bg1 :background ,keyword :weight normal))))
   `(helm-grep-cmd-line                       ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-file                           ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-finish                         ((,class (:foreground ,fg2 :background ,bg1))))
   `(helm-grep-lineno                         ((,class (:foreground ,fg1 :background ,bg1))))
   `(helm-grep-match                          ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running                        ((,class (:foreground ,func :background ,bg1))))
   `(helm-moccur-buffer                       ((,class (:foreground ,func :background ,bg1))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-bookmark-w3m                        ((,class (:foreground ,type))))

   ;;;;; web-mode
   `(web-mode-html-tag-bracket-face           ((,class (:foreground ,doc))))
   `(web-mode-html-tag-face                   ((,class (:foreground ,type))))
   `(web-mode-html-attr-name-face             ((,class (:foreground ,var))))
   `(web-mode-html-attr-value-face            ((,class (:foreground ,str))))
   `(web-mode-builtin-face                    ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face                    ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face                   ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-keyword-face                    ((,class (:foreground ,keyword))))
   `(web-mode-doctype-face                    ((,class (:inherit ,font-lock-doc-face))))
   `(web-mode-function-name-face              ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-string-face                     ((,class (:foreground ,str))))
   `(web-mode-type-face                       ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-warning-face                    ((,class (:inherit ,font-lock-warning-face))))
   `(web-mode-json-key-face                   ((,class (:foreground ,tron-green))))
   `(web-mode-json-context-face               ((,class (:foreground ,tron-blue))))

   ;;;;; Diff
   `(diff-header                              ((t (:foreground ,tron-bluegreen :background unspecified))))
   `(diff-file-header                         ((t (:foreground ,fg3 :background unspecified))))
   `(diff-hunk-header                         ((t (:foreground ,fg4 :background ,bg4))))
   `(diff-added                               ((t (:foreground ,tron-green :background ,tron-green-bg))))
   `(diff-removed                             ((t (:foreground ,tron-red :background ,tron-red-bg))))
   `(diff-changed                             ((t (:foreground ,tron-blue :background ,tron-blue-bg))))
   `(diff-refine-added                        ((t (:foreground ,tron-lightgreen :background ,tron-green-bghl))))
   `(diff-refine-removed                      ((t (:foreground ,tron-lightred :background ,tron-red-bghl))))
   `(diff-refine-changed                      ((t (:foreground ,tron-lightblue :background ,tron-blue-bghl))))

   ;;;;; Ediff
   `(ediff-current-diff-Ancestor              ((t (:foreground ,tron-red :background ,tron-red-bg))))
   `(ediff-current-diff-A                     ((t (:foreground ,tron-red :background ,tron-red-bg))))
   `(ediff-current-diff-B                     ((t (:foreground ,tron-green :background ,tron-green-bg))))
   `(ediff-current-diff-C                     ((t (:foreground ,tron-blue :background ,tron-blue-bg))))
   `(ediff-fine-diff-Ancestor                 ((t (:foreground ,tron-lightred :background ,tron-red-bghl))))
   `(ediff-fine-diff-A                        ((t (:foreground ,tron-lightred :background ,tron-red-bghl))))
   `(ediff-fine-diff-B                        ((t (:foreground ,tron-lightgreen :background ,tron-green-bghl))))
   `(ediff-fine-diff-C                        ((t (:foreground ,tron-lightblue :background ,tron-blue-bghl))))
   `(ediff-even-diff-Ancestor                 ((t (:background ,bg2))))
   `(ediff-even-diff-A                        ((t (:background ,bg2))))
   `(ediff-even-diff-B                        ((t (:background ,bg2))))
   `(ediff-even-diff-C                        ((t (:background ,bg2))))
   `(ediff-odd-diff-Ancestor                  ((t (:background ,bg2))))
   `(ediff-odd-diff-A                         ((t (:background ,bg2))))
   `(ediff-odd-diff-B                         ((t (:background ,bg2))))
   `(ediff-odd-diff-C                         ((t (:background ,bg2))))

   ;;;;; Java/JDE
   `(jde-java-font-lock-package-face          ((t (:foreground ,var))))
   `(jde-java-font-lock-public-face           ((t (:foreground ,keyword))))
   `(jde-java-font-lock-private-face          ((t (:foreground ,keyword))))
   `(jde-java-font-lock-constant-face         ((t (:foreground ,const))))
   `(jde-java-font-lock-modifier-face         ((t (:foreground ,key3))))
   `(jde-jave-font-lock-protected-face        ((t (:foreground ,keyword))))
   `(jde-java-font-lock-number-face           ((t (:foreground ,numeric))))

   ;;;;; centaur-tabs
   `(centaur-tabs-default                     ((t (:background ,bg1 :foreground ,fg1))))
   `(centaur-tabs-selected                    ((t (:background ,bg1 :foreground ,fg3 :box nil))))
   `(centaur-tabs-unselected                  ((t (:background ,bg2 :foreground ,fg0 :box nil))))
   `(centaur-tabs-selected-modified           ((t (:background ,bg2 :foreground ,accent :box nil))))
   `(centaur-tabs-unselected-modified         ((t (:background ,bg2 :foreground ,fg4 :box nil))))
   `(centaur-tabs-active-bar-face             ((t (:background ,accent :box nil))))
   `(centaur-tabs-modified-marker-selected    ((t (:inherit 'centaur-tabs-selected-modified :foreground ,accent :box nil))))
   `(centaur-tabs-modified-marker-unselected  ((t (:inherit 'centaur-tabs-unselected-modified :foreground ,accent :box nil))))

   ;;;;; solaire-mode
   `(solaire-default-face                     ((t (:inherit default :background ,bg2))))
   `(solaire-minibuffer-face                  ((t (:inherit default :background ,bg2))))
   `(solaire-hl-line-face                     ((t (:inherit hl-line :background ,bg3))))
   `(solaire-org-hide-face                    ((t (:inherit org-hide :background ,bg2))))

   ;;;;; Ivy
   `(ivy-confirm-face                         ((t (:inherit minibuffer-prompt :foreground ,keyword))))
   `(ivy-current-match                        ((t (:background ,bg-hl :extend t))))
   `(ivy-highlight-face                       ((t (:inherit font-lock-builtin-face))))
   `(ivy-match-required-face                  ((t (:inherit minibuffer-prompt :foreground ,warning))))
   `(ivy-minibuffer-match-face-1              ((t (:foreground ,tron-lightblue))))
   `(ivy-minibuffer-match-face-2              ((t (:inherit ivy-minibuffer-match-face-1))))
   `(ivy-minibuffer-match-face-3              ((t (:inherit ivy-minibuffer-match-face-2))))
   `(ivy-minibuffer-match-face-4              ((t (:inherit ivy-minibuffer-match-face-2))))
   `(ivy-minibuffer-match-highlight           ((t (:inherit ivy-current-match))))
   `(ivy-modified-buffer                      ((t (:inherit default :foreground ,var))))
   `(ivy-virtual                              ((t (:inherit default :foreground ,doc))))
   `(ivy-posframe                             ((t (:background ,bg3))))

   ;;;;; Counsel
   `(counsel-key-binding                      ((t (:foreground ,var))))

   ;;;;; Swiper
   `(swiper-match-face-1                      ((t (:inherit ivy-minibuffer-match-face-1))))
   `(swiper-match-face-2                      ((t (:inherit ivy-minibuffer-match-face-2))))
   `(swiper-match-face-3                      ((t (:inherit ivy-minibuffer-match-face-3))))
   `(swiper-match-face-4                      ((t (:inherit ivy-minibuffer-match-face-4))))
   `(swiper-line-face                         ((t (:foreground ,fg3 :background ,bg-hl :extend t))))

   ;;;;; Git gutter & git gutter fringe
   `(git-gutter:added                         ((t (:foreground ,vc-g :weight normal))))
   `(git-gutter:deleted                       ((t (:foreground ,vc-r :weight normal))))
   `(git-gutter:modified                      ((t (:foreground ,vc-b :weight normal))))
   `(git-gutter-fr:added                      ((t (:foreground ,vc-g :weight normal))))
   `(git-gutter-fr:deleted                    ((t (:foreground ,vc-r :weight normal))))
   `(git-gutter-fr:modified                   ((t (:foreground ,vc-b :weight normal))))

   ;;;;; diff-hl (git gutter)
   `(diff-hl-insert                           ((t (:background ,vc-g :foreground ,vc-g))))
   `(diff-hl-delete                           ((t (:background ,vc-r :foreground ,vc-r))))
   `(diff-hl-change                           ((t (:background ,vc-b :foreground ,vc-b))))

   ;;;;; Neo tree
   `(neo-dir-link-face                        ((t (:foreground "#cccccc"))))
   `(neo-header-face                          ((t (:foreground "#cccccc"))))
   `(neo-banner-face                          ((t (:foreground "#cccccc"))))
   `(neo-root-dir-face                        ((t (:foreground "#cccccc"))))
   `(neo-file-link-face                       ((t (:foreground "#aaaaaa"))))
   `(neo-expand-btn-face                      ((t (:foreground "#aaaaaa"))))

   ;;;;; smart mode line
   `(sml/line-number                          ((t (:foreground ,fg4 :bold nil))))
   `(sml/modified                             ((t (:foreground ,tron-lightred :background ,tron-red-bghl :bold t))))
   `(sml/outside-modified                     ((t (:foreground ,tron-lightred :background ,tron-red-bghl :bold nil))))
   `(sml/global                               ((t (:foreground ,fg1 :bold nil))))
   `(sml/filename                             ((t (:foreground ,fg4 :bold t))))
   `(sml/prefix                               ((t (:foreground ,fg1 :bold nil))))
   `(sml/read-only                            ((t (:foreground ,fg1 :bold nil))))
   `(sml/modes                                ((t (:foreground ,fg1 :bold nil))))
   `(sml/charging                             ((t (:foreground ,tron-green :bold nil))))
   `(sml/discharging                          ((t (:foreground ,tron-lightred :background ,tron-red-bghl :bold nil))))

   ;;;;; evil search and replace
   `(evil-ex-substitute-matches               ((t (:foreground ,warning :weight normal :strike-through t))))
   `(evil-ex-substitute-replacement           ((t (:foreground ,tron-bluegreen :weight normal))))

   ;;;;; highlight todo
   `(hl-todo                                  ((t (:inverse-video t))))

   ;;;;; highlight numbers
   `(highlight-numbers-number                 ((t (:foreground ,numeric))))

   ;;;;; highlight operators
   `(highlight-operators-face                 ((t (:inherit default))))

   ;;;;; highlight symbol
   `(highlight-symbol-face                    ((t (:background ,bg3 :distant-foreground ,fg0))))

   ;;;;; highlight thing
   `(highlight-thing                          ((t (:inherit highlight-symbol-face))))

   ;;;;; tab-bar-mode
   `(tab-bar                                  ((t (:background ,bg0))))
   `(tab-bar-tab                              ((t (:foreground ,fg0 :background ,bg0 :weight bold :box nil))))
   `(tab-bar-tab-inactive                     ((t (:foreground ,fg0 :background ,bg0 :box nil))))

   ;;;;; tree-sitter
   `(tree-sitter-hl-face:method.call          ((t (:inherit font-lock-function-name-face))))
   `(tree-sitter-hl-face:function.call        ((t (:inherit font-lock-function-name-face))))
   `(tree-sitter-hl-face:operator             ((t (:inherit default))))
   `(tree-sitter-hl-face:type.builtin         ((t (:inherit font-lock-keyword-face))))
   `(tree-sitter-hl-face:number               ((t (:inherit highlight-numbers-number))))
   `(tree-sitter-hl-face:variable.special     ((t (:inherit font-lock-keyword-face))))

   ;;;;; lsp-ui
   `(lsp-ui-doc-background                    ((t (:background ,bg0))))

   ;;;;; flycheck
   `(flycheck-info                            ((t (:underline (:style wave :color ,tron-green)))))
   `(flycheck-error                           ((t (:underline (:style wave :color ,tron-lightred)))))
   `(flycheck-warning                         ((t (:underline (:style wave :color ,tron-yellow)))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'tron-legacy)
(provide 'tron-legacy-theme)

;;; tron-legacy-theme.el ends here
