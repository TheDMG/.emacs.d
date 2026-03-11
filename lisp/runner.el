;; -*- lexical-binding: t; -*-

(defun dmg/current-file-run-command (file)
  "Return the shell command used to build or run FILE."
  (let* ((ext (downcase (or (file-name-extension file) "")))
         (quoted-file (shell-quote-argument file))
         (quoted-base (shell-quote-argument (file-name-sans-extension file))))
    (pcase ext
      ("c" (format "gcc -o %s %s && %s" quoted-base quoted-file quoted-base))
      ((or "cpp" "cc" "cxx")
       (format "g++ -o %s %s && %s" quoted-base quoted-file quoted-base))
      ("py" (format "python3 %s" quoted-file))
      ("go" (format "go run %s" quoted-file))
      (_ (user-error "No runner for .%s files" ext)))))

(defun dmg/run-current-file ()
  "Save the current buffer, then build or run the visited file in comint."
  (interactive)
  (unless buffer-file-name
    (user-error "Current buffer is not visiting a file"))
  (save-buffer)
  (let* ((file buffer-file-name)
         (default-directory (file-name-directory file))
         (buf-name "*run*")
         (cmd (dmg/current-file-run-command file)))
    (when-let ((buffer (get-buffer buf-name)))
      (when-let ((proc (get-buffer-process buffer)))
        (delete-process proc))
      (kill-buffer buffer))
    (let ((buffer (make-comint-in-buffer "run" buf-name shell-file-name nil
                                         shell-command-switch cmd)))
      (with-current-buffer buffer
        (setq-local comint-process-echoes t)
        (local-set-key (kbd "q") #'kill-buffer-and-window))
      (pop-to-buffer buffer))))

(global-set-key (kbd "C-c x") #'dmg/run-current-file)
(global-set-key (kbd "<f5>") #'dmg/run-current-file)

(provide 'runner)
