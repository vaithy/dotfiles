;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; Key bindings
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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


;
;    #   #    #               #                                                    #
;    #   #                    #                                                    #
;    #   #   ##    # ##    ## #  ## #    ###   #   #   ###           ###    ###   ####   #   #  # ##
;    # # #    #    ##  #  #  ##  # # #  #   #  #   #  #   #         #      #   #   #     #   #  ##  #
;    # # #    #    #   #  #   #  # # #  #   #   # #   #####          ###   #####   #     #   #  ##  #
;    ## ##    #    #   #  #  ##  # # #  #   #   # #   #                 #  #       #  #  #  ##  # ##
;    #   #   ###   #   #   ## #  #   #   ###     #     ###          ####    ###     ##    ## #  #
;                                                                                               #
;                                                                                               #

(global-set-key (kbd "M-H")  'windmove-left)
(global-set-key (kbd "M-J") 'windmove-right)
(global-set-key (kbd "M-K")    'windmove-up)
(global-set-key (kbd "M-M")  'windmove-down)


(use-package switch-window
  :bind (("C-x o" . switch-window))
)


(global-set-key [backspace]  'delete-backward-char)




;
;    #   #         #             #
;    #   #         #             #
;     # #    ###   # ##          #       ###    ###
;      #        #  ##  #         #      #   #  #   #
;     # #    ####  #   #         #      #####  #####
;    #   #  #   #  #   #         #      #      #
;    #   #   ####  #   #         #####   ###    ###
;
;
;; -----------------------------------------------------------------------------
;; Apropos and Window splitsP
;; Courtesy: ErgoEmacs keybinding from Xah Lee
;; Source: http://ergoemacs.org
;; -----------------------------------------------------------------------------
(global-set-key (kbd "<f1> a") 'apropos-command)
(global-set-key (kbd "<f1> m") 'describe-mode)
(global-set-key (kbd "<f1> v") 'describe-variable)
(global-set-key (kbd "M-3") 'delete-other-windows) ; expand current pane
(global-set-key (kbd "M-4") 'split-window-vertically) ; split pane top/bottom
(global-set-key (kbd "<C-tab>") 'other-window) ;; will work in non-org mode buffers
(global-set-key (kbd "C-<f4>") 'delete-window)
(global-set-key (kbd "M-<f4>") 'delete-frame)
(global-set-key (kbd "S-M-<f4>") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-n") 'make-frame)
(global-set-key "\C-w" 'quit-window)    ;; Map C-w to quit the window
(global-set-key (kbd "<f7>") 'open-file-dir-fast)
(global-set-key (kbd "M-l") 'clear-buffer) ; Clear current buffer

; open my Unicode template with F8 key
(global-set-key (kbd "<f8>")
  (lambda () (interactive) (find-file (concat my-emacs-home "emacs/my_unicode_template.txt" )))
)

;; -----------------------------------------------------------------------------
;; Line and Block Editing
;; -----------------------------------------------------------------------------
(global-set-key (kbd "<f2>") 'cut-line-or-region) ; cut.
(global-set-key (kbd "<f3>") 'copy-line-or-region) ; copy.
(global-set-key (kbd "<f4>") 'yank) ; paste.
(global-set-key (kbd "C-l")   'select-line)
(global-set-key (kbd "C-S-l") 'copy-line)
(global-set-key (kbd "C-d")   'duplicate-line)
(global-set-key (kbd "C-S-d") 'duplicate-region)
(global-set-key "\C-b" 'select-block)
(global-set-key [del] 'delete-region)
(global-set-key "\C-z" 'undo)
(global-set-key "\M-\C-z" 'iconify-or-deiconify-frame)
(global-set-key "\C-@" 'shell)
(global-set-key [f10] 'call-last-kbd-macro)
(global-set-key [f12] 'make-notes-frame)
(global-set-key "\C-j" 'goto-line)       ;;Go-to-line mapped to C-j


;; -----------------------------------------------------------------------------
;; All 'disable this keybinding' should go here
;; -----------------------------------------------------------------------------
;(global-set-key (kbd "C-x C-c") nil)



;; -----------------------------------------------------------------------------
;; Multiple Cursors
;; -----------------------------------------------------------------------------
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

;; -----------------------------------------------------------------------------
;; Tabbar
;; -----------------------------------------------------------------------------
(global-set-key (kbd "C-#") 'tabbar-backward)
(global-set-key (kbd "C-$") 'tabbar-forward)


;;
;;                                                  #
;;      ##                                          #
;;     #  #                                         #
;;     #  #   # #     ##           ## #    ##     ###    ##
;;     #  #   ## #   #  #          # # #  #  #   #  #   # ##
;;     #  #   #      # ##          # # #  #  #   #  #   ##
;;      ##    #       # #          #   #   ##     ###    ###
;;                      #
;;                    ##
;;

(global-set-key (kbd "<f12>") 'org-agenda)
(global-set-key (kbd "<f5>") 'bh/org-todo)
(global-set-key (kbd "<S-f5>") 'bh/widen)
(global-set-key (kbd "<f7>") 'bh/set-truncate-lines)
(global-set-key (kbd "<f8>") 'org-cycle-agenda-files)
(global-set-key (kbd "<f9> <f9>") 'bh/show-org-agenda)
(global-set-key (kbd "<f9> b") 'bbdb)
(global-set-key (kbd "<f9> c") 'calendar)
(global-set-key (kbd "<f9> f") 'boxquote-insert-file)
(global-set-key (kbd "<f9> g") 'gnus)
(global-set-key (kbd "<f9> h") 'bh/hide-other)
(global-set-key (kbd "<f9> n") 'bh/toggle-next-task-display)
(global-set-key (kbd "<f9> I") 'bh/punch-in)
(global-set-key (kbd "<f9> O") 'bh/punch-out)
(global-set-key (kbd "<f9> o") 'bh/make-org-scratch)
(global-set-key (kbd "<f9> r") 'boxquote-region)
(global-set-key (kbd "<f9> s") 'bh/switch-to-scratch)
(global-set-key (kbd "<f9> t") 'bh/insert-inactive-timestamp)
(global-set-key (kbd "<f9> T") 'bh/toggle-insert-inactive-timestamp)
(global-set-key (kbd "<f9> v") 'visible-mode)
(global-set-key (kbd "<f9> l") 'org-toggle-link-display)
(global-set-key (kbd "<f9> SPC") 'bh/clock-in-last-task)
(global-set-key (kbd "C-<f9>") 'previous-buffer)
(global-set-key (kbd "M-<f9>") 'org-toggle-inline-images)
(global-set-key (kbd "C-x n r") 'narrow-to-region)
(global-set-key (kbd "C-<f10>") 'next-buffer)
(global-set-key (kbd "<f11>") 'org-clock-goto)
(global-set-key (kbd "C-<f11>") 'org-clock-in)
(global-set-key (kbd "C-s-<f12>") 'bh/save-then-publish)
(global-set-key (kbd "C-c c") 'org-capture)


;; -----------------------------------------------------------------------------
;; Misc
;; -----------------------------------------------------------------------------

;; make PC keyboard's Win key or other to type Super or Hyper, for emacs running on Windows.
;; Source: http://ergoemacs.org/emacs/emacs_hyper_super_keys.html
(setq w32-pass-lwindow-to-system nil
      w32-pass-rwindow-to-system nil
      w32-pass-apps-to-system nil
      w32-lwindow-modifier 'super ; Left Windows key
      w32-rwindow-modifier 'super ; Right Windows key
      w32-apps-modifier 'hyper) ; Menu key

(global-set-key (kbd "M-l") 'clear-buffer) ; Clear current buffer
