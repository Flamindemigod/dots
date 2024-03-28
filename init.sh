#!/bin/bash
set -xe

sudo cp .pacman.conf /etc/pacman.conf
##Update System
pacman -Syu

#Install Deps
## Yay
cd /tmp
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
sudo makepkg -si
cd /tmp
rm -rf yay

##Pipewire
yay -S pipewire lib32-pipewire wireplubmer pipewire-audio pipewire-alsa pipewire-pulse pipewire-jack lib32-pipewire-jack qjackctl noise-suppression-for-voice
systemctl enable --user pipewire-pulse.service
ln -s pipewire ~/.config/pipewire

##Hyprland and HyprWM Tooling
yay -S hyprland hyprpaper hypridle hyprlock hyprpicker xdg-desktop-portal-hyprland xdg-desktop-portal-gtk linux-headers nvidia-535xx-dkms polkit-kde-agent deepin-compressor deepin-movie deepin-file-manager gnome-themes-extra wl-clipboard grimblast-git 
sudo cp .grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp .mkinitcpio.conf /etc/mkinitcpio.conf
sudo mkinitcpio --config /etc/mkinitcpio.conf --generate /boot/initramfs-custom.img
sudo cp .nvidia.conf /etc/modprobe.d/nvidia.conf
yay -S qt5-wayland qt5ct qt6-wayland libva libva-nvidia-driver-git
sudo systemctl enable nvidia-suspend.service
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-resume.service


### Dunst
yay -S dunst
ln -s dunst ~/.config/dunst

### Eww
yay -S eww-wayland
ln -s eww ~/.config/eww

### Wofi
yay -S wofi
ln -s wofi ~/.config/wofi


### Udiskie
yay -S diskie

##~~Alacritty~~ Wezterm & Neofetch & htop & btop & ckb-next &  OpenRGB & GIMP & Inkscape & MangoHud & gomp
yay -S ttf-fira-code ttf-nerd-fonts-symbols-mono wezterm neofetch htop btop-gpu-git ckb-next openrgb-bin gimp inkscape mangohud gomp-git 
ln -s wezterm ~/.config/wezterm
ln -s neofetch ~/.config/neofetch
ln -s htop ~/.config/htop
ln -s btop ~/.config/btop
ln -s ckb-next ~/.config/ckb-next
ln -s OpenRGB ~/.config/OpenRGB
ln -s GIMP ~/.config/GIMP
ln -s inkscape ~/.config/inkscape 
ln -s MangoHud ~/.config/MangoHud
ln -s gomp ~/.config/gomp

##Neovim
yay -S neovim
ln -s nvim ~/.config/nvim

## Obs
yay -S flatpak
ln -s obs-studio ~/.config/obs-studio

## Steam
yay -S steam ttf-liberation lib32-systemd
