;;
;;
;;
;; This file contains functions for CATMAPP module
;;
;;

(setq catmapp-cc-path "C:/Program Files (x86)/IBM/RationalSDLC/ClearCase/bin/")

(defvar catmapp-cc-cmd-list nil "alist for files i need to open frequently. Key is a short abbrev, Value is file path.")
(setq catmapp-cc-cmd-list
      '(
        ("d" . "\/diffpred" )
        ("i" . "\/checkin" )
        ("o" . "\/checkout" )
		("v" . "dummy" )
		("f" . "dummy")
        ;; more here
        ) )
		
(defun catmapp-cc-cmd(openCode)
	"Execute some clearcase commands"
	(interactive
	 (list (ido-completing-read "Command:" (mapcar (lambda (x) (car x)) catmapp-cc-cmd-list)))
	)
	(setq ccparam (cdr (assoc openCode  catmapp-cc-cmd-list)) )
	(if (string-equal ccparam "dummy")
        (progn
          (if (string-equal openCode "v" )
              (progn
                    (setq scmd (concat catmapp-cc-path "clearvtree.exe"))
                    (setq sparam "-all")
					(setq sparam (concat ccparam " " (buffer-file-name)))
              ) 
          )
		  (if (string-equal openCode "f" )
              (progn
                    (setq scmd (concat catmapp-cc-path "clearfindco.exe"))
                    (setq sparam "")
					(setq sparam (concat ccparam " " (buffer-file-name)))
              ) 
          )
		  
        )
		(progn
			(setq scmd (concat catmapp-cc-path "cleardlg.exe"))
			(setq sparam (concat ccparam " " (buffer-file-name)))
		)
    )
    
    ;; (insert sparam)
	(w32-shell-execute "open" scmd sparam nil)
;;	(insert sparam)
	(revert-buffer true)
)


(defvar catmapp-il-cmd-list nil "List of commands related to Issues list")
(defvar catmapp-il-link nil "Common link for issues list")
(setq catmapp-il-link )
(setq catmapp-il-cmd-list
      '(
        ("a" . "00002551" ) ;; MSA
        ("i" . "00002545" ) ;; MSI
        ("b" . "00001597" ) ;; MSBR
        ("r" . "00003532")  ;; CRM
        ("c" . "00004709")  ;; MS Checklist
        ;; more here
        )
)

(defun catmapp-il-cmd(il-cmd)
	"Open issue list detail cards"
	(interactive 
	 (list (ido-completing-read "Open detail card from:" (mapcar (lambda(x) (car x)) catmapp-il-cmd-list)))
	)
	(setq il-name (cdr (assoc il-cmd catmapp-il-cmd-list)))
	(setq il-link (concat "https://cateapps.ecorp.cat.com/shell/issues/issues.pl?/issues/list/" il-name)
    )
    (setq il-card-no (read-string "Enter card number:"))
    ;; (insert il-card-no)
    (setq il-link (concat il-link ",detailcard," il-card-no))
	;; (insert "\n" il-link)
    (w32-shell-execute "open" "iexplore.exe" il-link)
)





(defun test-cmd()
  (interactive)
  (call-process "cmd.exe" nil nil nil)
) 


(defun catmapp-compile-file-a4-2 ()
  (interactive)
  (defvar compiler-buffer "A4 Compiler")
  (setq curr-buff buffer-file-name)
  (setq curr-file-ext (car(last (split-string curr-buff  "/"))))
  (message "%s" curr-file-ext)
  (setq ext (substring curr-file-ext -2))
  (setq curr-file (car(split-string curr-file-ext ext)))
  (setq curr-file (concat curr-file ".o"))
  (message "%s" curr-file)
  (setq curr-file (concat " " curr-file))
  (setq compile-cmd "clearmake")
  (with-current-buffer (get-buffer-create compiler-buffer))

  (shell compiler-buffer)
  (switch-to-buffer compiler-buffer)
  (shell-command "cd .." )

  ; Call the command
  (start-process "emacs-build" compiler-buffer compile-cmd curr-file)

)


(defun catmapp-compile-file-a4 ()
  (interactive)
  (defvar compiler-buffer "A4 Compiler")
  (setq curr-buff buffer-file-name)
  (setq curr-file-ext (car(last (split-string curr-buff  "/"))))
  (message "%s" curr-file-ext)
  (setq ext (substring curr-file-ext -2))
  (setq curr-file (car(split-string curr-file-ext ext)))
  (setq curr-file (concat curr-file ".o"))
  (message "%s" curr-file)
  (setq curr-file (concat " " curr-file))
  (setq compile-cmd "clearmake")
  (with-current-buffer (get-buffer-create compiler-buffer))
  (setq cur-dir (file-name-directory curr-buff) )
  (file-name-directory cur-dir)
  (eshell)
  (insert "cd ..")
  (eshell-toggle-direct-send)
  (eshell-send-input nil nil t)

  ; Call the command
  ;; (start-process "emacs-build" compiler-buffer compile-cmd curr-file)

)

(defun catmapp-insert-func-header()
  "Insert C function header"
  (interactive)
  (insert "/*******************************************************************************\n")
  (insert 
"** FUNCTION NAME :  <Function Name>
**\n** DESCRIPTION   :
**     <Description>
**
** PARAMETER DESCRIPTION :
**     None.
**
** RETURN VALUE :
**     None.
*******************************************************************************/\n")
)

(defun catmapp-get-curr-func-name()
  "Copy current function name to clipboard"
  (interactive)
  (insert (which-function-mode))
)


(defun catmapp-ins-parse-pgn()
	"Insert J1939 Parse PGN template"
	(interactive)
	(insert "/*******************************************************************************\n")
	(insert
"** FUNCTION NAME :  app_j1939_parse_pgn_xxxx
**
** DESCRIPTION   :
**     J1939 Parse PGN function for PGN xxxx
**
** PARAMETER DESCRIPTION :
**     Ph_link      - Handle identifying J1939 link.
**
**     Ppst_rx_msg  - Pointer to RX MSG table entry defining the PGN and
**                          for which the callback was associated.
**
**     Pi8_ecm      - The index into the address table associated with the virtual ECM
**                          that owns the RX MSG table entry.
**
**     Pe_event     - Indicates the reason for invoking the callback:
**                           SCL_J1939_RX_MSG_PGN_RXED  PGN Received
**                           SCL_J1939_RX_MSG_LOST      The RX MSG Lost timer expired
**                           SCL_J1939_RX_MSG_NAK       A NAK was received in response to a \"Request PGN\"
**
**     Ppst_mbuf    -  MBuf containing the received message (only applies to event types
**                           SCL_J1939_RX_MSG_PGN_RXED and SCL_J1939_RX_MSG_NAK).
**
** RETURN VALUE :
**     None.
*******************************************************************************/
void app_j1939_parse_pgn_xxxx(const scl_j1939_link_t Ph_link,
                              const struct scl_j1939_rx_msg_s *Ppst_rx_msg,
                              const int_8 Pi8_ecm,
                              const SCL_J1939_RX_MSG_CB_ENUM_t Pe_event,
                              const scl_j1939_mbuf_hdr_t *Ppst_mbuf)
{

    (void)Ph_link;
    (void)Pi8_ecm;
    (void)Ppst_rx_msg;

     switch (Pe_event)
     {
         case (SCL_J1939_RX_MSG_PGN_RXED):
         {
             /* Get data from PGN */
             scl_j1939_get_data_from_mbuf(Ppst_mbuf, (unsigned_8*)(&atm_pres), 1, 0);

             break;
         }
         case (SCL_J1939_RX_MSG_LOST):
         case (SCL_J1939_RX_MSG_NAK):
         default:
         {
             /* Set rx value to DSI */
             break;
         }
     }
}\n"
)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Keybindings
;; !!! Move to a seperate el file
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key (kbd "<f9> c") 'catmapp-cc-cmd)
(global-set-key (kbd "<f9> i") 'catmapp-il-cmd)
