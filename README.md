# dotfiles

## Symlinks

```bash
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

