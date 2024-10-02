#!/bin/bash
set -xe

#sudo cp .pacman.conf /etc/pacman.conf
##Update System
#sudo pacman -Syu

#Install Deps
## Yay
#sudo pacman -S --needed git base-devel
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si
#cd ..
#rm -rf yay

##Pipewire
#yay -S pipewire lib32-pipewire wireplubmer pipewire-audio pipewire-alsa pipewire-pulse pipewire-jack lib32-pipewire-jack qjackctl noise-suppression-for-voice
#systemctl enable --user pipewire-pulse.service
ln -s pipewire /home/flamin/.config/pipewire

##Hyprland and HyprWM Tooling
#yay -S hyprland hyprpaper hypridle hyprlock hyprpicker xdg-desktop-portal-hyprland xdg-desktop-portal-gtk linux-headers nvidia-535xx-dkms polkit-kde-agent deepin-compressor deepin-movie deepin-file-manager gnome-themes-extra wl-clipboard grimblast-git 
#sudo cp .grub /etc/default/grub
#sudo grub-mkconfig -o /boot/grub/grub.cfg
#sudo cp .mkinitcpio.conf /etc/mkinitcpio.conf
#sudo mkinitcpio --config /etc/mkinitcpio.conf -k 6.8.2.arch2-1  --generate /boot/initramfs-custom.img
#sudo mkinitcpio -p linux-lts --config /etc/mkinitcpio.conf --generate /boot/initramfs-custom.img

#sudo cp .nvidia.conf /etc/modprobe.d/nvidia.conf
#yay -S qt5-wayland qt5ct qt6-wayland libva libva-nvidia-driver-git
#sudo systemctl enable nvidia-suspend.service
#sudo systemctl enable nvidia-hibernate.service
#sudo systemctl enable nvidia-resume.service

### SDDM
#yay -S sddm
#sudo systemctl enable sddm.service
#sudo cp sddm/10-hyprland.conf /etc/sddm.conf.d/10-hyprland.conf
#sudo cp -r sddm/chili /usr/share/sddm/themes/chili

### Dunst
#yay -S dunst
ln -s /home/flamin/dots/dunst dunst

### Eww
#yay -S eww-wayland
ln -s /home/flamin/dots/eww eww

### Wofi
#yay -S wofi
ln -s /home/flamin/dots/wofi wofi


### Udiskie
#yay -S diskie

##/home/flamin~Alacritty~~ Wezterm & Neofetch & htop & btop & ckb-next &  OpenRGB & GIMP & Inkscape & MangoHud & gomp
#yay -S ttf-fira-code ttf-nerd-fonts-symbols-mono wezterm neofetch htop btop-gpu-git ckb-next openrgb-bin gimp inkscape mangohud gomp-git 
ln -s /home/flamin/dots/wezterm wezterm
ln -s /home/flamin/dots/neofetch neofetch
ln -s /home/flamin/dots/htop htop
ln -s /home/flamin/dots/btop btop
ln -s /home/flamin/dots/ckb-next ckb-next
ln -s /home/flamin/dots/OpenRGB OpenRGB
ln -s /home/flamin/dots/GIMP GIMP
ln -s /home/flamin/dots/inkscape inkscape 
ln -s /home/flamin/dots/MangoHud MangoHud
ln -s /home/flamin/dots/gomp gomp

##Neovim
#yay -S neovim
ln -s /home/flamin/dots/nvim nvim

## Obs
#yay -S flatpak
ln -s /home/flamin/dots/obs-studio obs-studio

## Steam
#yay -S steam ttf-liberation lib32-systemd
