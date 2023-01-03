#https://github.com/hertg/lightdm-neon login panel


mv xinitrc $HOME/.xinitrc
mv zprofile $HOME/.zprofile
mkdir $HOME/.config/alacritty
mv alacritty.yml $HOME/.config/alacritty
mv xmonad $HOME/.xmonad
sudo mv fonts/ /usr/share/fonts/fonts-dot
cd /usr/share/fonts/fonts-dot && fc-cache -v -f
cd $HOME/.xmonad/bin/
chmod 744 *.sh
#INSTALL ALACRITTY : https://github.com/alacritty/alacritty/blob/master/INSTALL.md

## INSTALL CARGO : https://techviewleo.com/install-and-configure-alacritty-terminal-on-debian/
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#source $HOME/.cargo/env
sudo apt install cmake \
                pkg-config \
                libfreetype6-dev \
                libfontconfig1-dev \
                libxcb-xfixes0-dev \ 
                libxkbcommon-dev \
                python3 \
                virtualbox-guest-dkms \ 
                virtualbox-guest-utils \
                kitty \
                pulseaudio \
                xmonad \
                rofi \
                polybar \
                xorg \
                xinit \
                hsetroot \
                wmname \
                flameshot \
                sxhkd \
                xfce4-power-manager \
                x11-xserver-utils \
                mpd \
                libxcb-composite0-dev \
                virtualbox-ext-pack \
                lightdm
 
                
#git clone https://github.com/alacritty/alacritty.git
#cd alacritty
#cargo build --release
#sudo mv target/release/alacritty /usr/bin/

#sudo apt install 
#install VirtualGuestAdditions 6.1.38
#https://download.virtualbox.org/virtualbox/6.1.38/
#wget https://download.virtualbox.org/virtualbox/6.1.38/VBoxGuestAdditions_6.1.38.iso
#sudo mkdir /mnt/iso
#sudo mount -t iso9660 -o loop VBoxGuestAdditions_6.1.38.iso /mnt/iso
#sudo sh VBoxLinuxAdditions.run
#COMPILE XMONAD
cd $HOME/.xmonad && xmonad --recompile
#if the polybar is not shown, then uninstall i3
#sudo apt remove i3
