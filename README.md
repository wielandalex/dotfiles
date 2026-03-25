# dotfiles

## Symlinks

```console
ln -s $PWD/.bash_profile ~/.bash_profile
ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.inputrc ~/.inputrc

if ! [ -d ~/.bashrc.d ]; then
    mkdir ~/.bashrc.d
fi

ln -s $PWD/.bashrc.d/common.sh ~/.bashrc.d/common.sh

if ! [ -d ~/.local/bin ]; then
    mkdir -p ~/.local/bin
fi

ln -s $PWD/.local/bin/tmux-sessionizer ~/.local/bin/tmux-sessionizer

ln -s $PWD/nvim ~/.config/nvim
ln -s $PWD/tmux ~/.config/tmux
```

## GNOME Settings

```console
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape_shifted_capslock']"

gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true

gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Alt>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Alt>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Alt>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Alt>4']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Alt>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Alt>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Alt>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Alt>4']"

gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Alt>f']"

gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"

gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Super>r']"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "Launch terminal"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>t'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'ptyxis -s'
```
