# dotfiles

## i3 supporting programs

- blueman - Bluetooth manager
- brightnessctl - Brightness control
- nm-applet - Network manager
- pactl - Volume control
- rofi - Program launcher

## Symlinks

```sh
ln -s $PWD/i3 ~/.config/i3
ln -s $PWD/i3status ~/.config/i3status

ln -s $PWD/kitty ~/.config/kitty

ln -s $PWD/nvim ~/.config/nvim

ln -s $PWD/rofi ~/.config/rofi

sudo ln -s $PWD/xorg.conf.d/10-keyboard.conf /etc/X11/xorg.conf.d/10-keyboard.conf
sudo ln -s $PWD/xorg.conf.d/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf

ln -s $PWD/.zshrc ~/.zshrc
```
