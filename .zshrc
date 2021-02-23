# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### Path ###
# node.js path setting
export PATH=$HOME/.nodebrew/node/v14.3.0/bin:$PATH
### End of Zinit's installer chunk
export PATH="/usr/local/sbin:$PATH"
#######

### Zinit ###
# Zinitがなかったらインストール
if [[ ! -d ~/.zinit ]];then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
fi

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit installer's chunk

# autocomplete
# 履歴から候補表示
zinit light zsh-users/zsh-autosuggestions
# コマンド補完を強化
zinit light zsh-users/zsh-completions
# zshで256色表示できるように
zinit light chrissicool/zsh-256color

# history
# 履歴検索
zinit load zdharma/history-search-multi-word
# 履歴検索強化
zinit light zsh-users/zsh-history-substring-search

# theme
# pure用
zinit ice compile'(pure|async).zsh' pick'async.zsh' src'pure.zsh'
zinit light sindresorhus/pure
zstyle :prompt:pure:prompt:success color "#5FFF00"
zstyle :prompt:pure:prompt:error color "#FF5F00"
zstyle :prompt:pure:path color "#00D7FF"
zstyle :prompt:pure:git:branch color "#FFFF87"

#  highlighting
# シンタックスハイライト
zinit light zsh-users/zsh-syntax-highlighting

# move
# zで移動できる
zinit light rupa/z
#######

### Options ###
# keep background processes at full spead
# バックグランドで高速に
setopt nobgnice
# never ever beep
# ヒープ音出さない
setopt no_beep
# make cd easy
# cd 打たなくても移動できる
setopt auto_cd
# tab
# tabで補完
setopt auto_menu
# dir = history
# Historyを保存
export HIS TFILE=~/.zsh_history
# memory size
# メモリ内の履歴数
export HISTSIZE=100000
# the number of saving history in a file
# ファイル内の履歴数
export SAVEHIST=100000
# never duplicate
# 重複コマンドは履歴から除外
setopt hist_ignore_dups
# hokan
# 補完機能を有効化
autoload -Uz compinit
compinit
#######
