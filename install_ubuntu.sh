#/bin/bash

# Create the symbolik links 
ln -s .dotfiles/.vimrc
ln -s .dotfiles/.vim
ln -s .dotfiles/.bin

#Set the scripts in .bin 
chmod +x .bin/*
echo "$PATH:$HOME/.bin/" >> $HOME/.bashrc

#Install software

sudo apt install curl libreoffice vim texlive neofetch timeshift ncdu npm -y
snap install code -y

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
rm gitkraken-amd64.deb

curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Install OpenMPI
mkdir tmp
cd tmp
wget https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.1.tar.bz2
tar -xf openmpi-4.1.1.tar.bz2
cd openmpi-4.1.1
./configure --prefix=$HOME/opt/openmpi
make -j2
make install
cd ~/.dotfiles
rm -rf tmp
echo "export PATH=\$PATH:\$HOME/opt/openmpi/bin" >> $HOME/.bashrc
echo "export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:\$HOME/opt/openmpi/lib" >> $HOME/.bashrc

# Python packages
sudo apt install python3-pip -y
pip install pandas GTC mpi4py jupyterlab scipy numpy openpyxl matplotlib

