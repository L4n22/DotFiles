#https://github.com/manilarome/lightdm-webkit2-theme-glorious

mv xinitrc $HOME/.xinitrc
mv zprofile $HOME/.zprofile
mkdir $HOME/.config/alacritty
mv alacritty.yml $HOME/.config/alacritty
mv xmonad $HOME/.xmonad
sudo mv fonts/ /usr/share/fonts/fonts-dot
cd /usr/share/fonts/fonts-dot && fc-cache -v -f

#INSTALL ALACRITTY : https://github.com/alacritty/alacritty/blob/master/INSTALL.md

## INSTALL CARGO : https://techviewleo.com/install-and-configure-alacritty-terminal-on-debian/
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
sudo apt install cmake \
                pkg-config \
                libfreetype6-dev \
                libfontconfig1-dev \
                libxcb-xfixes0-dev \ 
                libxkbcommon-dev \
                python3 \
                lightdm \
                kitty \
                xmonad \
                rofi \
                polybar \
                xorg \
                xinit \
                open-vm-tools-desktop \
                hsetroot \
                wmname \
                flameshot \
                sxhkd \
                xfce4-power-manager \
                x11-xserver-utils \
                mpd \
                gtk2.0 \
                lxappearance \
                papirus-icon-theme
                
                
#git clone https://github.com/alacritty/alacritty.git
#cd alacritty
#cargo build --release
#sudo mv target/release/alacritty /usr/bin/


                     
#COMPILE XMONAD
#cd $HOME/.xmonad && xmonad --recompile
#if the polybar is not shown, then uninstall i3
#sudo apt remove i3

