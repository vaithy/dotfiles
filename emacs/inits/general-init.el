;
;    ####                 #
;    #   #                #
;    #   #   ###    ###   #   #   ###    ## #   ###
;    ####       #  #   #  #  #       #  #  #   #   #
;    #       ####  #      ###     ####   ##    #####
;    #      #   #  #   #  #  #   #   #  #      #
;    #       ####   ###   #   #   ####   ###    ###
;                                       #   #
;                                        ###
(setq package-archives '(("gnu"       . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")
                         ("user42"    . "http://download.tuxfamily.org/user42/elpa/packages/")
                        )
)
(package-initialize)

(setq package-list
  '(async auto-complete auto-yasnippet awk-it bind-key cmake-ide cmake-mode
    cmake-project company dash diminish elpy epl flycheck ggtags
    haskell-mode helm helm-c-yasnippet helm-core helm-gtags
    helm-swoop helm-projectile irony kanban let-alist levenshtein
    marmalade-demo minimap pkg-info popup ppd-sr-speedbar project-persist
    projectile pyvenv remember-theme seq sr-speedbar undo-tree
    use-package yasnippet zen-mode find-file-in-project
    highlight-indentation  project-persist project-persist-drawer py-autopep8
    ein
  )
)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


(setq sml/no-confirm-load-theme t)


;
;    #####  #
;      #    #
;      #    # ##    ###   ## #    ###    ###
;      #    ##  #  #   #  # # #  #   #  #
;      #    #   #  #####  # # #  #####   ###
;      #    #   #  #      # # #  #          #
;      #    #   #   ###   #   #   ###   ####
;
;
(add-to-list 'custom-theme-load-path "~/Dropbox/emacs/themes/")
(load-theme 'monokai t)




;
; 	   #        #      #         #              #
; 	  # #       #      #         #              #
; 	 #   #   ## #   ## #         #       ###   ####    ###   # ##
; 	 #   #  #  ##  #  ##         #          #   #     #   #  ##  #
; 	 #####  #   #  #   #         #       ####   #     #####  #
; 	 #   #  #  ##  #  ##         #      #   #   #  #  #      #
; 	 #   #   ## #   ## #         #####   ####    ##    ###   #
;

; (add-to-list 'load-path "C:/home/emacs/page-break-lines")
; (add-to-list 'load-path "C:/home/emacs/smart-tab")
; (add-to-list 'load-path "C:/home/emacs/w32-fullscreen")
; (add-to-list 'load-path "C:/home/emacs/dired+")
; (add-to-list 'load-path "C:/home/emacs/multiple-cursors.el-master")
; ;(add-to-list 'load-path "C:/home/emacs/ahk-mode")
; (add-to-list 'load-path "C:/home/emacs/clearcase")
; (add-to-list 'load-path "C:/home/emacs/org-s5")
; (add-to-list 'load-path "C:/home/emacs/ecb-2.40")
; (add-to-list 'load-path "C:/home/emacs/flycheck-20140201.637")
; (add-to-list 'load-path "C:/Users/govinva/AppData/Roaming/.emacs.d/multiple-cursors")
;; (add-to-list 'load-path "C:/Users/govinva/AppData/Roaming/.emacs.d")
;; (add-to-list 'load-path "C:/Users/govinva/AppData/Roaming/.emacs.d/dired+")
;; (add-to-list 'load-path "C:/Users/govinva/AppData/Roaming/.emacs.d/smart-tab")
;; (add-to-list 'load-path "C:/Users/govinva/AppData/Roaming/.emacs.d/w32-fullscreen")
;; (add-to-list 'load-path "C:/Users/govinva/AppData/Roaming/.emacs.d/misc/")
;; (add-to-list 'load-path "C:/Users/govinva/AppData/Roaming/.emacs.d/yasnippet")
;; (add-to-list 'load-path "C:/Users/govinva/AppData/Roaming/.emacs.d/kanban")
;; (require 'ido)
;; (setq ido-create-new-buffer 'always)
;; (setq ido-everywhere t)
;; (setq ido-max-directory-size 100000)
;; (ido-mode (quote both))
;; (setq ido-max-directory-size 100000)
;; (ido-mode (quote both))
;; (setq ido-default-file-method 'selected-window)
;; (setq ido-default-buffer-method 'selected-window)
;; (iswitchb-mode t)
;; (require 'fill-column-indicator)
;; (require 'htmlize)
;; (require 'w32-fullscreen)






;; (load "tabbar")
;(tabbar-mode 1)

(winner-mode t)
(auto-revert-mode t)
; (require 'dired+)



;
;    ####     ###   ###   ####
;     #  #      #  #   #   #  #
;     #  #      #  #       #  #
;     #  #      #  #       ###
;     #  #      #  #       #  #
;     #  #  #   #  #   #   #  #
;    ####    ###    ###   ####
;

;; Commented out as the functionality is provided & pulled in
;; from cua mode. See .emacs
;; http://www.emacswiki.org/emacs/ChangingCursorDynamically

; (setq djcb-read-only-color       "DarkSlateGray")
; (setq djcb-read-only-cursor-type '(hbar.10) )
; (setq djcb-overwrite-color       "red")
; (setq djcb-overwrite-cursor-type 'box)
; (setq djcb-normal-color          "blue")
; (setq djcb-normal-cursor-type    'bar)



;; Uniquify mode
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq w32-enable-caps-lock nil)

;; Non-nil means display update isn't paused when input is detected.
(setq redisplay-dont-pause t)
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-nonexistent-file-or-buffer nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Modes and variables
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(tool-bar-mode -1)
(menu-bar-mode -1)

;; (add-hook 'window-setup-hook 'maximize-window t)
(setq inhibit-startup-screen t)
; (kill-buffer "*scratch*")
(transient-mark-mode 1)
; (global-linum-mode 1)
(linum-mode 1)
(column-number-mode 1)

(cua-mode t)
(cua-selection-mode t)

(put 'downcase-region 'disabled nil)

(setq make-backup-files nil) 													; stop creating backup~ files
(setq auto-save-default nil) 													; stop creating #autosave# files
;; (setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

'(line-number-display-limit 100000)

(show-paren-mode t)
(setq show-paren-ring-bell-on-mismatch t)
(setq show-paren-style (quote expression))

(put 'narrow-to-region 'disabled nil)
(setq-default truncate-lines t)
(setq shift-select-mode nil)
(setq delete-selection-mode 1)


; delete seleted text when typing
;; Select windows by numbers and select windiws using Meta key
;(window-number-mode)
; (window-number-meta-mode)

;; Fill column indicator
;(fci-mode)
;(setq fci-rule-width 1)
;(setq fci-rule-color "blue")
;(setq-default fci-rule-column 80)
;(add-hook 'after-change-major-mode-hook 'fci-mode)
;(recentf-mode 1)

;; (defalias 'cl-set-getf 'cl--set-getf)
;; Yasnippet
;; (require 'yasnippet)


;; Auto Revert mode
(auto-revert-mode 1)

;; Ascii-doc mode
;; (require 'asciidoc)


;; Clean up startup
;;(kill-buffer "*scratch*")
;;(kill-buffer "*Messages*")
;; (kill-buffer "*Compile-Log*")


;; Tool-tip mode
(tooltip-mode -1)
(setq tooltip-use-echo-area t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; C Language Customizations
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq-default c-basic-offset 4
                  tab-width  4
                  indent-tabs-mode nil
		  c-default-style "linux"
				  )

'(c-doc-comment-style (quote ((c-mode) (pike-mode . autodoc))))
'(c-echo-syntactic-information-p t)
'(c-enable-xemacs-performance-kludge-p t)
'(c-ignore-auto-fill (quote (string c c++ cpp code)))
'(c-indent-comments-syntactically-p t)
'(c-mode-common-hook nil)
'(c-report-syntactic-errors t)

;; Load folding.el
(autoload 'folding-mode "folding"
 "Minor mode that simulates a folding editor" t)

;
;    ####           #     #
;    #   #          #     #
;    #   #  #   #  ####   # ##    ###   # ##
;    ####   #   #   #     ##  #  #   #  ##  #
;    #      #  ##   #     #   #  #   #  #   #
;    #       ## #   #  #  #   #  #   #  #   #
;    #          #    ##   #   #   ###   #   #
;           #   #
;            ###

(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))


(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


; Fixing a key binding bug in elpy
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)

; Fixing another key binding bug in iedit mode
(define-key global-map (kbd "C-c o") 'iedit-mode)
(elpy-use-ipython)


;
;     ###                  ##
;    #   #                  #
;    #       ###    ###     #     ###
;     ###   #   #      #    #        #
;        #  #       ####    #     ####
;    #   #  #   #  #   #    #    #   #
;     ###    ###    ####   ###    ####
;
;
;;  REF   https://github.com/michaelpnash/emacs-for-scala
;;  REF   http://www.troikatech.com/blog/2014/11/26/ensime-and-emacs-as-a-scala-ide


;
;    #####          ##     ##
;    #               #      #
;    #      #   #    #      #     ###    ###   # ##    ###    ###   # ##
;    ####   #   #    #      #    #      #   #  ##  #  #   #  #   #  ##  #
;    #      #   #    #      #     ###   #      #      #####  #####  #   #
;    #      #  ##    #      #        #  #   #  #      #      #      #   #
;    #       ## #   ###    ###   ####    ###   #       ###    ###   #   #
;
;
(add-to-list 'default-frame-alist '(fullscreen . maximized))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Configure Printer
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Custom Functions
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Maximize the current window
(defun maximize-window()
    ; #xf030 to maximize frame, #xf020 to minimize
    ; #xf120 to restore frame, and #xf100 to activate the menubar for keyboard access.
    ; #xf140 activates the screen saver if defined.
    (tool-bar-mode 1)
    (w32-send-sys-command #xf030)
    (tool-bar-mode -1)
)


(defun duplicate-line ()
  "Duplicate current line"
  (interactive)
  ;; let (ln-start-pos ln-end-pos)
  (setq ln-start-pos (line-beginning-position))
  (setq ln-end-pos (line-end-position))
  (copy-region-as-kill ln-start-pos ln-end-pos)
  (goto-char ln-end-pos)
  (insert "\n\n")
  (clipboard-yank)
)

(defun duplicate-region(arg)
  "Duplicate selected region"
  (interactive "P")
  (cua-copy-region arg)
  (goto-char (point))
  (insert "\n")
  (clipboard-yank)
)

(defun select-line()
  "Select current line"
  (interactive)
  ;; let (ln-start-pos ln-end-pos)
  (setq ln-start-pos (line-beginning-position))
  (setq ln-end-pos (line-end-position))
  (goto-char ln-start-pos)
  (cua-set-mark)
  (goto-char ln-end-pos)
  ;; (cua-set-mark)
)


(defun copy-line-or-region ()
  "Copy current line, or current text selection."
  (interactive)
  (if (region-active-p)
      (kill-ring-save (region-beginning) (region-end))
    (kill-ring-save (line-beginning-position) (line-beginning-position 2)) ) )

(defun cut-line-or-region ()
  "Cut the current line, or current text selection."
  (interactive)
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (kill-region (line-beginning-position) (line-beginning-position 2)) ) )


;;; Copied from xah-open-file-fast()
(defun open-file-dir-fast (openCode)
  "Prompt to open a file from a pre-defined set."
  (interactive "sOpen file: [aa]org [ab]wk [ac]ref [ad]exp [am].em [an]ginit [ao]oinit [au]src-home [av]pyf [aw]elf :")
  (setq my-org-home "C:/Vaidy/30_Org/")
  (setq my-emacs-home "C:/home/")
  (setq my-src-home "C:/Vaidy/src")
  (let (ξfile )
    (setq ξfile
          (cond
           ((string= openCode "aa") (concat my-org-home "" ))
		   ((string= openCode "ab") (concat my-org-home "org_files/current.org" ))
		   ((string= openCode "ac") (concat my-org-home "references.org"))
		   ((string= openCode "ad") (concat my-org-home "experiments.el"))
		   ((string= openCode "am") (concat my-emacs-home ".emacs"))
		   ((string= openCode "an") (concat my-emacs-home "general-init.el"))
		   ((string= openCode "ao") (concat my-emacs-home "org-init.el"))
		   ((string= openCode "au") (concat my-src-home "" ))
		   ((string= openCode "av") (concat my-src-home "python/scripts/" ))
		   ((string= openCode "aw") (concat my-src-home "elisp/src/" ))
		   (t (error "You typed 「%s」, it doesn't associate with a file." openCode ))
           )
          )
    (find-file ξfile ) ) )

(defun clear-buffer()
 "Kill all of the text in the current buffer."
 (interactive)
 (clipboard-kill-region 1 (point-max))
 (beginning-of-buffer)
)
