export PATH="/usr/local/git/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
