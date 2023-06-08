Windows dotfiles
================


The `.vimrc` is used for gVim. To make powerline work, you need to install an older version of Python 2.7 or 3.2 (depending on the vim release). Copy the dotfiles entries to `$HOME/.local/lib` and enable the `runtimepath`.

The rest is for WSL, Windows Terminal and oh-my-posh (theme).


Powershell
----------

Uses the profile that is stored as: `C:\Users\...\Documents\WindowsPowerShell` [ref](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.3)

  * `WindowsPowershell`
    * PoshThemes
      * [`mytheme.psm1`](./powerline-theme.psm1)
    * Modules
      * oh-my-posh
      * posh-git
    * [`Microsoft.PowerShell_profile.ps1`](./Microsoft.PowerShell_profile.ps1)

Consider running [`setup-system.ps1`](./setup-system.ps1) once, as it deals with aliases and other permanently set items.


Cygwin
------

For Cygwin I use my regular [dotfiles](https://github.com/gbraad/dotfiles) but removing the powerline symlink (to use `powerline.exe`) and set the appropriate permissions else the execution is denied.

  * tmux, screen, zsh, stow, git, mc, vim, openssh, python, python-pygments

### Pygments

```
python -m pip install pygments-style-tomorrownightbright
```


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
