
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "/home/v/.emacs.d/go-mode.el")
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(setq c-default-style "linux") 
(setq c-basic-offset 4) 
(c-set-offset 'comment-intro 0)
(add-to-list 'load-path "~/.emacs.d/ecb")
(require 'ecb)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(beacon-color "#ff2f97")
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("c7f10959cb1bc7a36ee355c765a1768d48929ec55dde137da51077ac7f899521" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "2f4f50d98073c01038b518066840638455657dc91dd1a225286d573926f36914" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "cab317d0125d7aab145bc7ee03a1e16804d5abdfa2aa8738198ac30dc5f7b569" "9ca30555c140731fc5d797a741a434bc1d7bd25d2d3b033f41a4ab24720594bd" "28335ebd9ad0ee69c9ce4157eb621bb93b1bc31d054b48952cb9887a4d863fad" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "075351c6aeaddd2343155cbcd4168da14f54284453b2f1c11d051b2687d6dc48" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "2593436c53c59d650c8e3b5337a45f0e1542b1ba46ce8956861316e860b145a0" "6bc387a588201caf31151205e4e468f382ecc0b888bac98b2b525006f7cb3307" "39dd7106e6387e0c45dfce8ed44351078f6acd29a345d8b22e7b8e54ac25bac4" default)))
 '(desktop-globals-to-save
   (quote
    (desktop-missing-file-warning tags-file-name tags-table-list search-ring regexp-search-ring register-alist file-name-history default-frame-alist)))
 '(ecb-options-version "2.40")
 '(ecb-source-path
   (quote
    (("/home/v/Documents/turpy/scoring_app" "scoring-app")
     ("/home/v/Documents/projects/gnome-terminal-chat" "terminal-chat")
     ("/home/v/Documents/projects/totorov" "totorov")
     ("/home/v/Documents/work/ksanalytics/src-vinay/web_api" "ksanal_api")
     ("/home/v/Documents/work/ergon" "ergon")
     ("/home/v/Documents/hyperledger/fabric" "fabric")
     ("/home/v/Documents/projects/vyker.me" "vyker.me")
     ("/home/v/Documents/work/wilt" "wilt")
     ("/home/v/Documents/projects/camchat" "camchat")
     ("/home/v/Documents/st/st_lukesmith" "stluke")
     ("/home/v/Documents/projects/farmyr/farmyr" "farmyr")
     ("/home/v/Documents/work/stark/prestigemills" "prestigemills"))))
 '(evil-emacs-state-cursor (quote ("#E57373" hbar)))
 '(evil-insert-state-cursor (quote ("#E57373" bar)))
 '(evil-normal-state-cursor (quote ("#FFEE58" box)))
 '(evil-visual-state-cursor (quote ("#C5E1A5" box)))
 '(fci-rule-color "#383838")
 '(flycheck-color-mode-line-face-to-color (quote mode-line-buffer-id))
 '(frame-background-mode (quote dark))
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   (quote
    ("#FFEE58" "#C5E1A5" "#80DEEA" "#64B5F6" "#E1BEE7" "#FFCC80")))
 '(highlight-symbol-foreground-color "#E0E0E0")
 '(highlight-tail-colors (quote (("#ff2f97" . 0) ("#424242" . 100))))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2aa198")
     ("PROG" . "#268bd2")
     ("OKAY" . "#268bd2")
     ("DONT" . "#d70000")
     ("FAIL" . "#d70000")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#875f00")
     ("KLUDGE" . "#875f00")
     ("HACK" . "#875f00")
     ("TEMP" . "#875f00")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(inhibit-startup-screen t)
 '(linum-format " %7i ")
 '(package-selected-packages
   (quote
    (gited phps-mode gnu-elpa-keyring-update php-scratch go-add-tags go-autocomplete go-capf go-complete go-errcheck go-gen-test go-imenu go-impl go-imports go-playground go-playground-cli go-scratch go-tag clojure-mode-extra-font-locking connection csharp-mode csproj-mode csv dad-joke dired-explorer dired-imenu dired-launch dired-narrow dired-open disk django-commands django-manage django-mode vue-html-mode vue-mode wallpaper wc-mode web-beautify x-path-walker x509-mode xkcd pug-mode 2048-game ample-theme angular-mode apropospriate-theme arjen-grey-theme auto-complete auto-complete-c-headers auto-complete-clang autumn-light-theme backlight borland-blue-theme boron-theme brainfuck-mode brutalist-theme calmer-forest-theme cdlatex circe clojure-mode cloud-theme cmake-font-lock cmake-mode color-theme color-theme-sanityinc-solarized color-theme-sanityinc-tomorrow color-theme-solarized company-c-headers company-lua company-nginx company-php cuda-mode cyberpunk-theme cypher-mode cython-mode d-mode daemons dakrone-theme dark-mint-theme darkburn-theme darkmine-theme darkokai-theme darktooth-theme datetime dired-git-info docker docker-api docker-cli docker-compose-mode dockerfile-mode dracula-theme dropbox easy-jekyll easy-kill-extras ecb eink-theme es-mode fsharp-mode git-command git-commit github-browse-file github-clone github-review github-search gitignore-mode go-mode google-maps goose-theme gulp-task-runner heroku heroku-theme i3wm ini-mode jabber jade-mode jvm-mode keyword-search latex-extra latex-math-preview mongo monochrome-theme monokai-alt-theme monokai-pro-theme monokai-theme monotropic-theme mood-one-theme noctilux-theme node-resolver nodejs-repl nodenv northcode-theme nova-theme oceanic-theme pacmacs pcap-mode php-mode pig-mode pyenv-mode python-pytest restart-emacs reverse-theme sage-shell-mode sexy-monochrome-theme shell-command slack spacemacs-theme sublime-themes sudoku swap-regions swift-mode swift3-mode telepathy twilight-anti-bright-theme typescript-mode vagrant virtualenv volume web-mode web-mode-edit-element web-search weechat weechat-alert whois win-switch window-jump window-layout window-number window-numbering xterm-color yaml-mode yoshi-theme zweilight-theme coffee-mode darkroom dash vlf ahungry-theme chess company company-ebdb company-math company-statistics csv-mode dict-tree diffview easy-kill js2-mode json-mode)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#262626")))
 '(pos-tip-background-color "#3c3c3c")
 '(pos-tip-foreground-color "#9E9E9E")
 '(tabbar-background-color "#373737")
 '(vc-annotate-background "#3C4C55")
 '(vc-annotate-color-map
   (\`
    ((20 \, "#DF8C8C")
     (40 \, "#df8f87")
     (60 \, "#e79787")
     (80 \, "#ef9f87")
     (100 \, "#f7a787")
     (120 \, "#F2C38F")
     (140 \, "#f7b787")
     (160 \, "#efbf87")
     (180 \, "#e7c787")
     (200 \, "#dfcf87")
     (220 \, "#DADA93")
     (240 \, "#cfd787")
     (260 \, "#c7d787")
     (280 \, "#bfd787")
     (300 \, "#b7d787")
     (320 \, "#A8CE93")
     (340 \, "#a7cf97")
     (360 \, "#9fc7a7")
     (380 \, "#97bfb7")
     (400 \, "#8fb7c7")
     (420 \, "#83AFE5")
     (440 \, "#87a7d7")
     (460 \, "#879fd7")
     (480 \, "#8797d7")
     (500 \, "#878fd7")
     (520 \, "#9A93E1"))))
 '(vc-annotate-very-old-color "#6c6cac")
 '(window-divider-mode nil)
 '(xterm-mouse-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages")
   t))

(defalias 'e 'ecb-activate)
(defalias 'ed 'ecb-deactivate)
(defalias 'cr 'comment-region)
(defalias 'ur 'uncomment-region)

(set-frame-parameter (selected-frame) 'alpha '(85 . 50))
(add-to-list 'default-frame-alist '(alpha . (85 . 50)))
(setq pug-tab-width 2)

(setq auto-save-file-name-transforms
      `((".*" ,(concat user-emacs-directory "auto-save/") t)))

(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

(set-background-color "black")
(set-foreground-color "grey")

(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))
    
(defun set-frame-alpha (arg &optional active)
  (interactive "nEnter alpha value (1-100): \np")
  (let* ((elt (assoc 'alpha default-frame-alist))
         (old (frame-parameter nil 'alpha))
         (new (cond ((atom old)     `(,arg ,arg))
                    ((eql 1 active) `(,arg ,(cadr old)))
                    (t              `(,(car old) ,arg)))))
    (if elt (setcdr elt new) (push `(alpha ,@new) default-frame-alist))
    (set-frame-parameter nil 'alpha new)))
(global-set-key (kbd "C-c t") 'set-frame-alpha)
        
(defun stop-using-minibuffer ()
  "kill the minibuffer"
  (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
    (abort-recursive-edit)))

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)
(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)
  (revert-buffer :ignore-auto :noconfirm))
(defalias 'r 'revert-buffer-no-confirm)

(global-auto-revert-mode t)

(setq x-select-enable-clipboard t)

(defun stop-using-minibuffer ()
  "kill the minibuffer"
  (when (and (>= (recursion-depth) 1) (active-minibuffer-window))
    (abort-recursive-edit)))

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)
