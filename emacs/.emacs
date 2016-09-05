(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#272822" "#F92672" "#A6E22E" "#E6DB74" "#66D9EF" "#FD5FF0" "#A1EFE4" "#F8F8F2"])
 '(blink-matching-delay 5)
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(company-show-numbers t)
 '(compilation-message-face (quote default))
 '(cua-enable-cua-keys t)
 '(cua-enable-cursor-indications t)
 '(cua-enable-modeline-indications t)
 '(cua-highlight-region-shift-only nil)
 '(cua-mode t nil (cua-base))
 '(cua-normal-cursor-color "blue")
 '(cua-overwrite-cursor-color "red")
 '(cua-paste-pop-rotate-temporarily t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("92cfc474738101780aafd15a378bb22476af6e8573daa8031a9e4406b69b9eb8" default)))
 '(custom-theme-directory "~/Dropbox/emacs/themes/")
 '(dnd-open-file-other-window t)
 '(electric-indent-mode t)
 '(electric-pair-mode t)
 '(electric-pair-skip-self nil)
 '(fci-rule-color "#49483E")
 '(global-hl-line-mode t nil (hl-line))
 '(global-linum-mode t)
 '(global-visual-line-mode nil)
 '(goal-column nil)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#49483E" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#49483E" . 100))))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(magit-diff-use-overlays nil)
 '(normal-erase-is-backspace (quote maybe))
 '(org-agenda-default-appointment-duration 30)
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-span 5)
 '(org-export-html-inline-images (quote maybe))
 '(org-fontify-done-headline t)
 '(org-fontify-whole-heading-line t)
 '(org-highlight-latex-fragments-and-specials t)
 '(org-icalendar-include-body 30)
 '(org-icalendar-include-todo nil)
 '(org-icalendar-store-UID t)
 '(org-icalendar-use-deadline (quote (todo-due)))
 '(org-icalendar-use-plain-timestamp t)
 '(org-icalendar-use-scheduled (quote (todo-start)))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-gnus org-id org-info org-jsinfo org-habit org-inlinetask org-irc org-mew org-mhe org-protocol org-rmail org-vm org-wl org-w3m org-mouse org-annotate-file org-bookmark org-checklist org-choose org-man org2rem org-toc org-track)))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(server-mode t)
 '(set-mark-default-inactive nil)
 '(shift-select-mode t)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tab-always-indent nil)
 '(tab-stop-list (quote (4 8 16 24 32 40 48 56 64 72 80 88 96 104 112 120)))
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0"))
 '(which-func-modes t)
 '(which-func-non-auto-modes nil)
 '(which-function-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 130 :width normal)))))

(setq user-full-name "Vaidyanathan AG")



; 	  ###                  #                            #             #     #
; 	 #   #                 #                                                #
; 	 #      #   #   ###   ####    ###   ## #           ##    # ##    ##    ####
; 	 #      #   #  #       #     #   #  # # #           #    ##  #    #     #
; 	 #      #   #   ###    #     #   #  # # #           #    #   #    #     #
; 	 #   #  #  ##      #   #  #  #   #  # # #           #    #   #    #     #  #
; 	  ###    ## #  ####     ##    ###   #   #          ###   #   #   ###     ##

(load "~/Dropbox/emacs/inits/paths2load.el")
(load "~/Dropbox/emacs/inits/general-init.el")
(load "~/Dropbox/emacs/inits/ide-setup.el")
(load "~/Dropbox/emacs/inits/org-init.el")
(load "~/Dropbox/emacs/inits/keybindings.el")

;;(setq toggle-debug-on-error 1)
;;(global-auto-revert-mode t)
