source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# .git-prompt.sh オプション
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトのカスタマイズ
promps() {
  local RESET='\e[0m'
  local BASE='U ´\`・) { ' # SNOOPY仕様
  local GIT_STATE='$(__git_ps1 " [%s]")'

  # ASCIIエスケープシーケンス カラー設定
  local RED='\[\e[0;31m\]'
  local YELLOW='\[\e[0;33m\]'

  PS1="${BASE}${YELLOW}\W${RED}${GIT_STATE}${RESET} \$ "
}
promps

# Bash history に残さないコマンド
HISTIGNORE='pwd:ls:ls *:ln:ln *:cd:cd *:history'

# Bash history の重複コマンドを削除
HISTCONTROL=erasedups

# ディレクトリの新規作成 & 移動
mkcd() {
  mkdir $1 && cd $1 && pwd
}
