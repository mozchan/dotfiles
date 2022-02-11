export PATH="/usr/local/bin/git:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# git-promptの読み込み
source ~/.zsh/git-prompt.sh

# git-completionの読み込み
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -U compinit
compinit

# .git-prompt.sh オプション
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトのカスタマイズ
setopt PROMPT_SUBST ; PS1='U ´\`・) { %F{yellow}%c%f%F{red}$(__git_ps1 " [%s]")%f \$ '

# Bash history に残さないコマンド
HISTIGNORE='pwd:ls:ls *:ln:ln *:cd:cd *:history'

# Bash history の重複コマンドを削除
HISTCONTROL=erasedups

# ディレクトリの新規作成 & 移動
mkcd() {
  mkdir $1 && cd $1 && pwd
}
