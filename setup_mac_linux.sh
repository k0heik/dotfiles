DOTPATH=${HOME}/dotfiles

# .vimrc
ln -snvf ${DOTPATH}/.vimrc ${HOME}/.vimrc

# .zshrc
ln -snvf ${DOTPATH}/.zshrc ${HOME}/.zshrc

# molokai
mkdir -p ${HOME}/.vim/colors
if [[ ! -d ${HOME}/.vim/molokai ]];then
	git clone https://github.com/tomasr/molokai
	mv ${DOTPATH}/molokai ${HOME}/.vim/molokai
	cp ${HOME}/.vim/molokai/colors/molokai.vim ~/.vim/colors/
fi

# tmux
ln -snvf ${DOTPATH}/.tmux.conf ${HOME}/.tmux.conf

# nvim
# init.vim
if [[ ! -d ${HOME}/.config ]];then
	mkdir -p ${HOME}/.config
fi
ln -snvf ${HOME}/.vim ${HOME}/.config/nvim
ln -snvf ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim

# dein
if [[ ! -d ${HOME}/.cache/dein ]];then
    mkdir -p ${HOME}/.cache/dein
    ln -snvf ${DOTPATH}/dein/dein.toml ${HOME}/.cache/dein/dein.toml
    ln -snvf ${DOTPATH}/dein/dein_lazy.toml ${HOME}/.cache/dein/dein_lazy.toml
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ~/.cache/dein
    rm ./installer.sh
fi
# dein
ln -snvf ${DOTPATH}/dein/dein.toml ${HOME}/.cache/dein/dein.toml
ln -snvf ${DOTPATH}/dein/dein_lazy.toml ${HOME}/.cache/dein/dein_lazy.toml

# vscode
if [[ ! -d ${HOME}/Library/Application\ Support/Code ]];then
    echo "VSCode is not installed"
fi
ln -snvf ${DOTPATH}/vscode/keybindings.json ${HOME}/Library/Application\ Support/Code/User/keybindings.json
ln -snvf ${DOTPATH}/vscode/settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json