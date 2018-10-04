source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# .git-prompt.sh オプション
GIT_PS1_SHOWDIRTYSTATE=true
  # add されていない変更の存在を「＊」で示す
  # commit されていない変更の存在を「＋」で示す
GIT_PS1_SHOWUNTRACKEDFILES=true
  # add されていない新規ファイルの存在を「％」で示す
GIT_PS1_SHOWSTASHSTATE=true
  # stash がある場合は「＄」で示す
GIT_PS1_SHOWUPSTREAM=auto
  # upstream と同期している場合は「＝」で示す
  # upstream より進んでいる場合は「＞」で示す
  # upstream より遅れている場合は「＜」で示す


# プロンプトのカスタマイズ
promps() {
  # ASCIIエスケープシーケンス カラー設定
  Black='\[\e[0;30m\]'
  RED='\[\e[0;31m\]'
  GREEN='\[\e[0;32m\]'
  YELLOW='\[\e[0;33m\]'
  BLUE='\[\e[0;34m\]'
  MAGENTA='\[\e[0;35m\]'
  CYAN='\[\e[0;36m\]'
  WHITE='\[\e[0;37m\]'

  BASE='U ´\`・) { ' # SNOOPY仕様
  PS1="${BASE}${YELLOW}\W${RED}$(__git_ps1 ' [%s]')${WHITE} \$ "
}
promps

# Bash history に残さないコマンド
HISTIGNORE='pwd:ls:ls *:ln:ln *:cd:cd *:history'

# Bash history の重複コマンドを削除
HISTCONTROL=erasedups
