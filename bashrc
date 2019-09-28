if [ -f /etc/os-release ]; then
	. /etc/os-release
	export OSNAME=$NAME
fi

# ignorespace and ignoredups
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

export EDITOR="$(command -v vim)"

# -F, --classify: add indicator (*/=>@|)
# --color: always (default), never, auto
alias ls='ls -F --color=auto'
# -h, --human-readable: with -l, print sizes in human readable format
alias ll='ls -lh'
# -A, --almost-all: exclude implied . and .. 
alias la='ll -A'

# -p, --parents: make parent dirs
# -v, --verbose
alias mkdir='mkdir -pv'

alias sl='cd'
alias sl..='cd ..'
alias sl...='cd ../..'

alias g='git'

