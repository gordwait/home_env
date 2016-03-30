 (global-set-key "\b" 'delete-backward-char)
 (global-set-key "" 'save-buffers-kill-emacs)
 (global-set-key "" 'save-buffer)
 (global-set-key "" 'find-file)

 (global-set-key "r" 'replace-string)
 (global-set-key "q" 'query-replace)
 (global-set-key "j" 'fill-paragraph)
 (global-set-key "n" 'next-line)
 (global-set-key "p" 'previous-line)
 (global-set-key "." 'set-mark-command)
 (global-set-key "\M-j" 'fill-paragraph)
(setq auto-mode-alist (cons (cons "\\.perl$" 'perl-mode) auto-mode-alist))
(setq auto-mode-alist (cons (cons "\\.pl$" 'perl-mode) auto-mode-alist))

(column-number-mode 1)  ; makes the column number show up

;; doesn't work:
;;(defun blatme nil
;;(revert-buffer "noconfirm" ))

;;F1 seems to be the help key.

;; is it dangerous to not ask for a confirm?
 (global-set-key (quote [f5]) 'revert-buffer)

 (global-set-key (quote [f8]) (quote compile)) 
 (global-set-key (quote [f7]) (quote next-error)) 
 (global-set-key (quote [f9]) (quote kill-rectangle)) 
 (global-set-key (quote [f10]) (quote yank-rectangle)) 
 (global-set-key (quote [f11]) (quote copy-rectangle-to-register)) 
 (global-set-key (quote [f12]) (quote insert-rectangle)) 

;; (setq explicit-shell-file-name
;;       "C:/cygwin64/bin/bash.exe")
;; (setq shell-file-name explicit-shell-file-name)
;; (add-to-list 'exec-path "C:/cygwin64/bin")

(put 'upcase-region 'disabled nil)

 (defun prepend-path ( my-path )
 (setq load-path (cons (expand-file-name my-path) load-path))) 
 (defun append-path ( my-path ) 
 (setq load-path (append load-path (list (expand-file-name my-path))))) 
;; Look first in the directory ~/elisp for elisp files 
 (prepend-path "~/elisp") 
;; Load verilog mode only when needed 
 (autoload 'verilog-mode "verilog-mode" "Verilog mode" t ) 
;; Any files that end in .v should be in verilog mode 
(setq auto-mode-alist (cons '("\\.v\\'" . verilog-mode) auto-mode-alist))
;; Any files in verilog mode should have their keywords colorized 
(add-hook 'verilog-mode-hook '(lambda () (font-lock-mode 1)))

(setq auto-mode-alist (cons  '("\\.v\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons  '("\\.vc\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons  '("\\.iv\\'" . verilog-mode) auto-mode-alist))
(setq auto-mode-alist (cons  '("\\.dv\\'" . verilog-mode) auto-mode-alist))
 
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(global-font-lock-mode t nil (font-lock))
 '(line-move-visual nil)
 '(printer-name "prn1:")
 '(save-place t nil (saveplace))
 '(show-paren-mode t nil (paren))
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(vc-make-backup-files t)
 '(vhdl-electric-mode nil)
 '(verilog-auto-newline nil)
 '(vhdl-standard (quote (93 nil))))
 
 (visual-line-mode nil)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

 (add-to-list 'vc-handled-backends `SVN)
 ;; New stuff to "fix" emacs 22.1 so it acts like the older one..
 (setq inhibit-startup-message t)

 (define-key minibuffer-local-filename-completion-map (kbd "SPC")
        'minibuffer-complete-word)
     
 (define-key minibuffer-local-must-match-filename-map (kbd "SPC")
        'minibuffer-complete-word)

(fset 'flatten
   [?\C-s ?* ?s ?i ?g ?n ?\C-a ?\C-n ?\C-  ?\C-s ?* ?s ?i ?g ?n ?\C-a ?\C-w ?\C-\[ ?x ?s ?w ?i ?  ?t ?  ?b ?  ?\C-m ?* ?s ?c ?r ?a ?c ?h ?\C-? ?\C-? ?t ?c ?h ?* ?\C-m ?\C-y ?\C-x ?\C-x ?\C-\[ ?r ?\C-q ?\C-j ?\C-m ?  ?\C-m ?\C-x ?\C-x ?\C-  ?\C-e ?\C-w ?\C-x ?b ?f ?l ?a ?t ?. ?n ?e ?t ?\C-m ?\C-p ?\C-e ?  ?\C-y ?\C-a ?\C-n])

(fset 'newpinswap
   [escape ?x ?s ?e ?a ?r ?c ?h ?- ?f ?o ?r ?w ?a ?r ?d return ?P ?I ?N ?_ return ?\C-b ?\C-b ?\C-b ?\C-b ?\C-  ?\C-s ?- ?t ?o ?\C-b ?\C-b ?\C-b ?\C-b escape ?w ?\C-x ?b ?n ?e ?w ?_ ?c ?o ?n ?v ?e ?r ?t ?e ?r ?. ?s ?e ?d return escape ?< escape ?x ?s ?e ?a ?r ?c ?h ?- ?f ?o ?r ?w ?a ?r ?d return ?s ?/ ?\C-y return ?\C-f ?\C-  ?\C-s ?/ ?\C-b escape ?w ?\C-x ?b ?b ?t ?s ?_ ?c ?o ?n ?f ?i ?g ?+ backspace ?_ ?p ?i ?n ?o ?u ?t ?. ?t ?c ?l return backspace backspace backspace backspace backspace backspace backspace backspace ?\C-y ?\C-a ?\C-n ?\C-o ?\C-n])

(fset 'fixpin
   [?\M-x ?s ?e ?a ?r ?c ?h ?- ?f ?o ?r ?w ?a ?r ?d ?\C-m ?P ?I ?N ?_ ?\C-m ?\C-b ?\C-b ?\C-b ?\C-b ?\C-  ?\C-s ?  ?\C-b ?\C-\[ ?w ?\M-x ?s ?w ?i ?t ?c ?h ?- ?t ?o ?- ?b ?u ?f ?f ?e ?r ?- ?o ?t ?h ?e ?r ?- ?w ?i ?n ?d ?o ?w ?\C-m ?n ?e ?w ?_ ?c ?o ?n ?v ?e ?r ?t ?e ?r ?. ?s ?e ?d ?\C-m ?\M-x ?b ?e ?g ?i ?n ?n ?i ?n ?g ?- ?o ?f ?- ?b ?u ?f ?f ?e ?r ?\C-m ?\M-x ?s ?e ?a ?r ?c ?h ?- ?f ?o ?r ?w ?a ?r ?d ?\C-m ?s ?/ ?\C-y ?/ ?\C-m ?\C-f ?\C-b ?\C-  ?\C-s ?/ ?\C-b ?\C-\[ ?w ?\C-x ?o ?\C-y ?\C-x ?\C-x ?\C-  ?\C-r ?  ?\C-f ?\C-w ?\C-a ?\C-p ?\C-k ?\C-n ?\C-o ?\C-n])


 (global-set-key (quote [f4]) 'fixpin)

;; new emacs cygwin stuff:
;;   (require 'cygwin-mount)
;;   (cygwin-mount-activate)

(if (and (eq system-type 'windows-nt)
(require 'cygwin-mount nil t))
(progn
(setenv "PATH" (concat "c:/cygwin/bin;" (getenv "PATH")))
(setq exec-path (cons "c:/cygwin/bin/" exec-path))
(require 'setup-cygwin)))


;; This causes start errors:
;; (require 'psvn)


;; Prevent issues with the Windows null device (NUL)
;; when using cygwin find with rgrep.
(defadvice grep-compute-defaults (around grep-compute-defaults-advice-null-device)
  "Use cygwin's /dev/null as the null-device."
  (let ((null-device "/dev/null"))
	ad-do-it))
(ad-activate 'grep-compute-defaults)

;; recentf stuff
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(require 'tramp)

(require 'server)
(or (server-running-p)
(server-start))

(put 'downcase-region 'disabled nil)
