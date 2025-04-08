# Looper-Elpa

This is the Emacs Lisp Package Archive to host my Emacs extensions.

## Usage

To use this package archive, add the following to your Emacs configuration:

```elisp
(require 'package)
(add-to-list 'package-archives
  '("looper" . "https://raw.githubusercontent.com/lieutar/looper-elpa/refs/heads/looper/packages/archive-contents")
 t)
(package-initialize)
```
Or on Cask:

```elisp
(source "looper" "https://raw.githubusercontent.com/lieutar/looper-elpa/refs/heads/looper/packages/archive-contents")
```

## Contribution Policy

Currently, this archive is hosted for personal use, and I am not accepting 
third-party extensions at this time. I plan to submit pull requests to MELPA for 
extensions that reach a sufficient level of completeness.

## Future Plans

I aim to develop and host various Emacs extensions that enhance productivity 
and usability. Stay tuned for updates as I work on new features and improvements!
