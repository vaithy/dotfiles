
;; (setq  true) ; assign 1 to x

;
;    ####                    #                  #       #     ##
;    #   #                                      #              #
;    #   #  # ##    ###     ##    ###    ###   ####    ##      #     ###
;    ####   ##  #  #   #     #   #   #  #   #   #       #      #    #   #
;    #      #      #   #     #   #####  #       #       #      #    #####
;    #      #      #   #     #   #      #   #   #  #    #      #    #
;    #      #       ###   #  #    ###    ###     ##    ###    ###    ###
;                         #  #
;                          ##

(projectile-global-mode)



;
;    #   #          ##
;    #   #           #
;    #   #   ###     #    ## #
;    #####  #   #    #    # # #
;    #   #  #####    #    # # #
;    #   #  #        #    # # #
;    #   #   ###    ###   #   #

;; Helm TODO
;;	TODO		Command: helm-ff-do-grep, live grep in Helm
;;	TODO		helm-semantic-or-imenu
;;	TODO		helm-man-woman
;;	TODO		helm-find
;;	TODO		helm-projectile
;;	REF 		http://tuhdo.github.io/helm-intro.html
;;	REF 		http://tuhdo.github.io/index.html

(helm-mode 1)
(setq helm-mode-fuzzy-match 1)
(setq helm-completion-in-region-fuzzy-match 1)
(helm-autoresize-mode t)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)

(use-package helm
  :diminish helm-mode
  :init
  (progn
    (require 'helm-config)
    (setq helm-candidate-number-limit 100)
    ;; From https://gist.github.com/antifuchs/9238468
    (setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
          helm-input-idle-delay 0.01  ; this actually updates things reeeelatively quickly.
          helm-yas-display-key-on-candidate t
          helm-quick-update t
          helm-M-x-requires-pattern nil
          helm-ff-skip-boring-files t)
    (helm-mode))
  :bind (("C-c h" 		. helm-mini)
         ("C-h a" 		. helm-apropos)
         ("C-x C-f" 	. helm-find-files)
         ("C-x C-b" 	. helm-buffers-list)
         ("C-x b" 		. helm-buffers-list)
         ("M-y" 		. helm-show-kill-ring)
         ("M-x" 		. helm-M-x)
         ("C-x c o" 	. helm-occur)
         ("C-x c s" 	. helm-swoop)
         ("C-x c y" 	. helm-yas-complete)
         ("C-x c Y" 	. helm-yas-create-snippet-on-region)
         ("C-x c b" 	. my/helm-do-grep-book-notes)
         ("C-x c SPC" 	. helm-all-mark-rings))
)

(ido-mode -1) ;; Turn off ido mode in case I enabled it accidentally

(use-package helm-descbinds
  :defer t
  :bind (("C-h b" . helm-descbinds)
         ("C-h w" . helm-descbinds))
)

(use-package helm-swoop
 :bind(
	 	 ("C-S-s" . helm-swoop)
	 	 ("M-i" . helm-swoop)
	 	 ("M-s s" . helm-swoop)
	 	 ("M-s M-s" . helm-swoop)
	 	 ("M-I" . helm-swoop-back-to-last-point)
	 	 ("C-c M-i" . helm-multi-swoop)
	 	 ("C-x M-i" . helm-multi-swoop-all)
 	)
 :config(progn
	 	  (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
	 	  (define-key helm-swoop-map   (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
 	)
)

(autoload 'dired-async-mode "dired-async.el" nil t)
(dired-async-mode 1)
(async-bytecomp-package-mode 1)


;
;     ###                                                                      #
;    #   #                                                                     #
;    #       ###   ## #   # ##    ###   # ##   #   #         ## #    ###    ## #   ###
;    #      #   #  # # #  ##  #      #  ##  #  #   #         # # #  #   #  #  ##  #   #
;    #      #   #  # # #  ##  #   ####  #   #  #  ##         # # #  #   #  #   #  #####
;    #   #  #   #  # # #  # ##   #   #  #   #   ## #         # # #  #   #  #  ##  #
;     ###    ###   #   #  #       ####  #   #      #         #   #   ###    ## #   ###
;                         #                    #   #
;                         #                     ###

(progn
	(add-hook 'after-init-hook 'global-company-mode)
	(add-hook 'c++-mode-hook 'irony-mode)
	(add-hook 'c-mode-hook 'irony-mode)
	(add-hook 'objc-mode-hook 'irony-mode)

	; replace the `completion-at-point' and `complete-symbol' bindings in
	; irony-mode's buffers by irony-mode's function
	(defun my-irony-mode-hook ()
	  (define-key irony-mode-map [remap completion-at-point]
	    'irony-completion-at-point-async)
	  (define-key irony-mode-map [remap complete-symbol]
	    'irony-completion-at-point-async))
	(add-hook 'irony-mode-hook 'my-irony-mode-hook)
	(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
)



;
;            #
;            #
;    # ##   ####    ###    ## #   ###
;    ##  #   #         #  #  #   #
;    #       #      ####   ##     ###
;    #       #  #  #   #  #          #
;    #        ##    ####   ###   ####
;                         #   #
;                          ###
; (progn
; 	(require 'rtags) ;; optional, must have rtags installed
; 	(cmake-ide-setup)
; )



;
;     ###   #   #    #    #   #  #####          ###   ####   #####
;    #   #  #   #   # #   #  #   #               #     #  #  #
;    #      ## ##  #   #  # #    #               #     #  #  #
;    #      # # #  #   #  ##     ####   #####    #     #  #  ####
;    #      #   #  #####  # #    #               #     #  #  #
;    #   #  #   #  #   #  #  #   #               #     #  #  #
;     ###   #   #  #   #  #   #  #####          ###   ####   #####
;

;; See this link: https://github.com/atilaneves/cmake-ide

; (progn

; 	(global-flycheck-mode)
; 	(setq myoptdir "/")
; 	;; (add-to-list 'load-path (concat myoptdir "AC"))
; 	(require 'auto-complete-config)
; 	;; (add-to-list 'ac-dictionary-directories (concat myoptdir "AC/ac-dict"))

; 	(require 'auto-complete-clang)

; 	(setq ac-auto-start nil)
; 	(setq ac-quick-help-delay 0.5)
; 	;; (ac-set-trigger-key "TAB")
; 	;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
; 	(define-key ac-mode-map  [(control tab)] 'auto-complete)
; 	(defun my-ac-config ()
; 	  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
; 	  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
; 	  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
; 	  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
; 	  (add-hook 'css-mode-hook 'ac-css-mode-setup)
; 	  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
; 	  (global-auto-complete-mode t))
; 	(defun my-ac-cc-mode-setup ()
; 	  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
; 	(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

; 	;; ac-source-gtags
; 	(my-ac-config)

; )







