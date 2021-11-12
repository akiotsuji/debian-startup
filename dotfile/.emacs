(prefer-coding-system 'utf-8)
(package-initialize)
(set-language-environment "Japanese")

;; Added by Package.el.  This must come before configurations of
 ;; installed packages.  Don't delete this line.  If you don't want it,
 ;; just comment it out by adding a semicolon to the start of the line.
 ;; You may delete these explanatory comments.  
(global-linum-mode t)
(display-time)

;; font-size
(set-frame-font "terminus-19")

;; remove splash screen
(setq inhibit-splash-screen t)

;; auto-complete
;; (el-get-bundle auto-complete)
;; (ac-set-trigger-key "TAB")
;; (setq ac-quick-help-delay 0.2)


;;追加のパッケージを登録
(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; (package-initialize) 
;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))


(electric-pair-mode 1)
(setq-default tab-width 4 indent-tabs-mode nil)
;; (setq tab-width 4)
(setq scroll-conservatively 1)
(show-paren-mode 1)
(setq delete-auto-save-files t)
;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)


;; (require 'epc)
;; (require 'auto-complete)
;; (require 'auto-complete-config)
;; (require 'python)

;;-----------------------------------------
;;; emacs 上で PDF の注釈を付ける設定
(setq doc-view-scale-internally nil)
(add-hook 'doc-view-mode-hook
  	  '(lambda ()
	     (local-set-key "c" 'doc-annotate-add-annotation)
	     (local-set-key [mouse-1] 'doc-annotate-add-annotation)))
(autoload 'doc-annotate-mode "doc-annotate")
(autoload 'doc-annotate-add-annotation "doc-annotate")
(add-to-list 'auto-mode-alist '("\\.ant$" . doc-annotate-mode))

;;-----------------------------------------------------------
;; slide 作成時のみ
;; org -> tex -> pdf まで変換してくれるプロセス
(setq org-latex-pdf-process
'(
  "uplatex %b.tex" "uplatex %b.tex" "dvipdfmx %b.dvi"))

;; 変換したものをmupdf で開く
(eval-after-load "org"
'(progn
(delete '("\\.pdf\\'" . default) org-file-apps)
(add-to-list 'org-file-apps '("\\.pdf\\'" . "mupdf %s"))
)
)
;;-----------------------------------------------------------


(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)


;;-----------------------------------------------------------

(define-key global-map [f5]
  '(lambda ()
     (interactive)
     (insert (format-time-string "%Y/%m/%d %H:%M:%S"))))

;;色
(set-face-background 'default "#172727")
(set-face-foreground 'default "white")
(menu-bar-mode -1)
(tool-bar-mode -1)

;;-----------------------------------------------------------

;; カーソルのある行のハイライトを有効にする
(global-hl-line-mode t)
;; ハイライトの色を設定します
(custom-set-faces '(hl-line ((t (:background "#535d6c")))))
;; ハイライトのスタイルをアンダーラインにします
;; ただしアンダーバーが見えづらくなる問題があります
;; (setq hl-line-face 'underline)
