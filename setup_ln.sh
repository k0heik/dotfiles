DOTPATH=${HOME}/dotfiles

# .vimrc
#ln -snvf ${DOTPATH}/.vimrc ${HOME}/.vimrc

# .zshrc
#ln -snvf ${DOTPATH}/.zshrc ${HOME}/.zshrc

# 配置したい設定ファイル
dotfiles=(.zshrc .vimrc .tmux.conf .p10k.zsh)

# 設定ファイルのシンボリックリンクを
# ホームディレクトリ直下に作成する
for file in "${dotfiles[@]}"; do
        ln -snvf ${DOTPATH}/${file} ~/${file}
done

# dein
mkdir -p ${HOME}/.cache/dein
ln -snvf ${DOTPATH}/.dein/dein.toml ${HOME}/.cache/dein/dein.toml
ln -snvf ${DOTPATH}/.dein/dein_lazy.toml ${HOME}/.cache/dein/dein_lazy.toml

# molokai
mkdir -p ${HOME}/.vim/colors
if [[ ! -d ${HOME}/.vim/molokai ]];then
	git clone https://github.com/tomasr/molokai
	mv ${DOTPATH}/molokai ${HOME}/.vim/molokai
	cp ${HOME}/.vim/molokai/colors/molokai.vim ~/.vim/colors/
fi

# tmux
#ln -snvf ${DOTPATH}/.tmux.conf ${HOME}/.tmux.conf

# nvim
# init.vim
# if [[ ! -d ${HOME}/.config ]];then
# 	mkdir -p ${HOME}/.config
# fi
# ln -snvf ${HOME}/.vim ${HOME}/.config/nvim
# ln -snvf ${HOME}/.vimrc ${HOME}/.config/nvim/init.vim
