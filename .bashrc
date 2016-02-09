# Open terminal new tab/window in the same directory
. /etc/profile.d/vte.sh

# Enable fuzzy finder fzf
. /etc/profile.d/fzf.bash

# Show git branch in prompt
source /usr/share/git/completion/git-prompt.sh

# Autojump
source /etc/profile.d/autojump.sh

# Command Prompt
# [user directory (git-branch) ]#
PS1='\[\e[1;31m\][\u\[\e[m\] \[\e[0;36m\]\[\e[3m\]\W\[\e[23m\]\[\e[m\]\[\e[1;32m\]$(__git_ps1 " (%s)")\[\e[m\] \[\e[1;31m\]]#\[\e[m\] '

# Default editor
export EDITOR=vim

# yaourt
export VISUAL=vim

# GCC 5.2 color
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Ranger File Manager
# Automatically change the directory in bash after closing ranger
function ranger-cd {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}

# List shorcuts 
alias ls='ls -F --color=auto'
alias l='ls'
alias ll='ls -alh'
# Ask before remove (disable by -f force)
alias rm='rm -i'
# Run last command again with sudo
alias please='sudo $(fc -ln -1)'

# Program settings
alias grep='grep --color=auto -n'
alias pdfgrep='pdfgrep -n'
alias gcc='gcc -fdiagnostics-color'
alias emacs='emacs --no-window-system'
# thefuck
eval $(thefuck --alias)

# Program shorcuts
alias n='nautilus `pwd` &'
alias d='cd ~/Desktop'
alias D='cd ~/Dropbox'
alias vi='vim'
alias f='ranger-cd'
