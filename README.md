Windows dotfiles
================

For Cygwin is use my regular [dotfiles](https://github.com/gbraad/dotfiles) but removing the powerline symlink (to use `powerline.exe`) and set the appropriate permissions else the execution is denied.

The `.vimrc` is used for gVim. To make powerline work, you need to install an older version of Python 2.7 or 3.2 (depending on the vim release). Copy the dotfiles entries to `$HOME/.local/lib` and enable the `runtimepath`.

The rest is for WSL, Windows Terminal and oh-my-posh (theme).


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
