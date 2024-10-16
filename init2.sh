#!/bin/bash
set -xe
HOME = "/home/flamin"
sudo cp .pacman.conf /etc/pacman.conf
#Update System
sudo pacman -Syu

#Install Deps
# Yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

yay -Syu

yay -S amdgpu-pro-installer
### Vulkan
yay -S vulkan-icd-loader lib32-vulkan-icd-loader vulkan-amdgpu-pro


##Pipewire
yay -S pipewire lib32-pipewire wireplubmer pipewire-audio pipewire-alsa pipewire-pulse pipewire-jack lib32-pipewire-jack qjackctl noise-suppression-for-voice
systemctl enable --user pipewire-pulse.service

##Hyprland and HyprWM Tooling
yay -S hyprland hyprpaper hypridle hyprlock hyprpicker xdg-desktop-portal-hyprland xdg-desktop-portal-gtk linux-headers polkit-kde-agent gnome-themes-extra wl-clipboard grimblast-git dolphin
sudo cp .grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp .mkinitcpio.conf /etc/mkinitcpio.conf
sudo mkinitcpio --config /etc/mkinitcpio.conf -k 6.8.2.arch2-1  --generate /boot/initramfs-custom.img
sudo mkinitcpio -p linux-lts --config /etc/mkinitcpio.conf --generate /boot/initramfs-custom.img

#yay -S qt5-wayland qt5ct qt6-wayland libva libva-nvidia-driver-git
#sudo systemctl enable nvidia-suspend.service
#sudo systemctl enable nvidia-hibernate.service
#sudo systemctl enable nvidia-resume.service

### SDDM
yay -S sddm
sudo systemctl enable sddm.service
sudo cp sddm/10-hyprland.conf /etc/sddm.conf.d/10-hyprland.conf
sudo cp -r sddm/chili /usr/share/sddm/themes/chili

### Dunst
yay -S dunst

### Wofi
yay -S wofi

### Kitty
yay -S kitty ttf-fira-code ttf-nerd-fonts-symbols-mono fastfetch htop btop-gpu-git gomp-git 

###RGB Control
yay -S ckb-next openrgb-bin 

###Image editors
yay -S gimp inkscape 

###Mangohud
yay -S mangohud  

#Neovim
yay -S neovim

#Flatpaks
yay -S flatpak

# Obs
flatpak install flathub com.obsproject.Studio

#Bottles
flatpak install flathub com.usebottles.bottles

#Flatseal
flatpak install flathub com.github.tchx84.Flatseal


#gamemode
yay -S gamemode lib32-gamemode
usermod -a -G gamemode flamin

## Steam
yay -S steam ttf-liberation lib32-systemd
