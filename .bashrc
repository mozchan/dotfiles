source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# .git-prompt.sh オプション
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトのカスタマイズ
promps() {
  # ASCIIエスケープシーケンス カラー設定
  local Black='\[\e[0;30m\]'
  local RED='\[\e[0;31m\]'
  local GREEN='\[\e[0;32m\]'
  local YELLOW='\[\e[0;33m\]'
  local BLUE='\[\e[0;34m\]'
  local MAGENTA='\[\e[0;35m\]'
  local CYAN='\[\e[0;36m\]'
  local WHITE='\[\e[0;37m\]'

  local BASE='U ´\`・) { ' # SNOOPY仕様
  PS1="${BASE}${YELLOW}\W${RED}$(__git_ps1 ' [%s]')${WHITE} \$ "
}
promps

# Bash history に残さないコマンド
HISTIGNORE='pwd:ls:ls *:ln:ln *:cd:cd *:history'

# Bash history の重複コマンドを削除
HISTCONTROL=erasedups
