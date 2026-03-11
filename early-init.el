;; -*- lexical-binding: t; -*-

(setq gc-cons-threshold most-positive-fixnum)

(defvar default-emacs--file-name-handler-alist file-name-handler-alist)
(defvar default-emacs--vc-handled-backends vc-handled-backends)

(setq file-name-handler-alist nil
      vc-handled-backends nil)

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars . nil) default-frame-alist)
(push '(tooltip . nil) default-frame-alist)
