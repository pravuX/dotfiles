;; yumm... more packages!!!
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(setq inhibit-startup-screen t) ;; rid me of the hideous splash screen
(menu-bar-mode 0) ;; rid me of the hideous menubar
(tool-bar-mode 0) ;; rid me of the hideous toolbar
(scroll-bar-mode -1) ;; rid me of the hideous scrollbar
(ido-mode 0) ;; auto-completion, yay!
(set-default-font "SauceCodePro Nerd Font-14") ;; give me my (current) favourite font
(column-number-mode 1)
(show-paren-mode 1)
(setq backup-directory-alist '(("." . "~/.emacs_save")))
(global-display-line-numbers-mode)
(global-hl-line-mode)
(set-default 'truncate-lines t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3c3836" "#fb4933" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(custom-enabled-themes (quote (gruber-darker)))
 '(custom-safe-themes
   (quote
    ("ff6c5a15591b98a58a7a68a969f7143e3e663991c31bf55ff0807f17e223af4b" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" default)))
 '(frame-brackground-mode (quote dark))
 '(package-selected-packages
   (quote
    (gruvbox-theme nord-theme elpy gruber-darker-theme evil autothemer)))
 '(pdf-view-midnight-colors (quote ("#fdf4c1" . "#1d2021"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
