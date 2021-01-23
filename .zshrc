export PATH=/usr/local/bin:/Developer/usr/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/X11/bin:/usr/X11/lib:/opt/local/bin:/opt/local/lib/opt/local/bin:/opt/local/sbin:/usr/local/opt/go/libexec/bin:/usr/local/opt/inetutils/libexec/gnubin

# 日本語を使用
export LANG=ja_JP.UTF-8

# 色を使用
autoload -Uz colors
colors

# 補完
autoload -Uz compinit
compinit -u

# 他のターミナルとヒストリーを共有
setopt share_history

# ヒストリーに重複を表示しない
setopt histignorealldups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# -----------------------------
# Prompt
# -----------------------------
# %M    ホスト名
# %m    ホスト名
# %d    カレントディレクトリ(フルパス)
# %~    カレントディレクトリ(フルパス2)
# %C    カレントディレクトリ(相対パス)
# %c    カレントディレクトリ(相対パス)
# %n    ユーザ名
# %#    ユーザ種別
# %?    直前のコマンドの戻り値
# %D    日付(yy-mm-dd)
# %W    日付(yy/mm/dd)
# %w    日付(day dd)
# %*    時間(hh:flag_mm:ss)
# %T    時間(hh:mm)
# %t    時間(hh:mm(am/pm))
#PROMPT='%F{cyan}%n@%m%f:%~# '
#PROMPT='%n@%C# '
#PROMPT='%c %# '
#PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
#%# "
#PROMPT="%B%{${fg[white]}%}[%n@%m]%f%b %~
PROMPT="%B%{${fg[white]}%}[%n]%f%b %~
%# "

# コマンドミスを修正
setopt correct

# 補完の選択を楽にする
zstyle ':completion:*' menu select
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"

alias ls="ls -alst -GF"
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'
