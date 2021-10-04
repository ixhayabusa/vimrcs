apt update -y
apt upgrade -y
apt install vim -y
pip install pyvim -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \                        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [[ -z "$1" ]]; then
    curl https://raw.githubusercontent.com/Zyonlu01/vimin/main/.vimrc -o ~/.vimrc
    vim +PlugInstall

else
    curl $1 -o ~/.vimrc
    vim +PlugInstall
fi
