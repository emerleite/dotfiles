export TERM=xterm-256color
alias ls="ls -G"
alias myip='curl -s checkip.dyndns.com | grep -Eo "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"'

PS1='[\t - \u] \[\033[1;33m\]\w\a\[\033[0m\]\n\$ '
PS1="\$(~/.rvm/bin/rvm-prompt) $PS1"

export IRCNICK=emerleite

export ALTERNATE_EDITOR=""
export EDITOR='emacsclient -t'
export VISUAL="emacsclient -c -a emacs"

export HOMEBREW_GITHUB_API_TOKEN=4611587d330d39cf4aec4143ada1ae74b5073cb0

export GOPATH="$HOME/dev/gocode/"

alias emacs-server='emacs --daemon'
alias em='emacsclient -t'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
