alias ls="ls -G"
alias myip='curl -s checkip.dyndns.com | grep -Eo "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+"'

PS1='\n[\t - \u] \[\033[1;33m\]\w\a\[\033[0m\]\n\$ '
PS1="\$(~/.rvm/bin/rvm-prompt) $PS1"

export IRCNICK=emerleite
export ARCHFLAGS='-arch i386 -arch x86_64'

# Emacs
alias em='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -q -n'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
