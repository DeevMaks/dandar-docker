# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[01;36m\]`__git_ps1`\[\033[00m\]\$ '

# bash_completion
source /etc/bash_completion.d/git-prompt
source /usr/share/bash-completion/completions/git
# enable bash completion in interactive shells
# if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
# fi

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
	export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
	colorflag="-G"
	export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi
# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    # alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi
# some more ls aliases
alias ll="ls -lAF ${colorflag}"
alias la="ls -AF ${colorflag}"
alias l="ls -CAF ${colorflag}"
# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# GIT
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gcmm='git commit -m'
alias gco='git checkout'
alias gl='git pull'
alias gp='git push'
alias gs='git status'
alias glog='git log'
alias gla='git loga'
alias glg='git logg'
alias glf='git logf'

#
alias cdwww='cd /var/www/html_nakanune.ru/adm02/'

#
export PATH="~/bin:$PATH"
export PATH="/var/www/html_nakanune.ru/adm02/vendor/bin:$PATH"
