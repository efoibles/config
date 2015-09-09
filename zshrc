
# Path to your oh-my-zsh installation.
#export PANEL_FIFO="/tmp/panel-fifo"
export ZSH=~/.oh-my-zsh

# Set path to scripts
export PATH=~/Scripts:$PATH


# Directory colors
export LS_COLORS="no=00:fi=00;37:di=00;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;05;37;41:ex=00;32:\
*.sh=00;33:*.cpp=00;33:*.py=00;33:*.c=00;33:*.java=00;33:*.h=00;36:\
*.tar=01;35:*.tgz=01;35:*.taz=01;35:*.zip=01;35:*.gz=01;35:*.bz2=01;35:*.deb=01;35:*.rpm=01;35:*.jar=01;35:*.pkg.tar.gz=01;31;35:\
*.jpg=00;32:*.jpeg=00;32:*.gif=00;32:*.bmp=00;32:*.png=00;32:\
*.mp4=01;36:*.mpg=01;36:*.mpeg=01;36:*.wmv=01;36:*.avi=01;36:\
*.mp3=01;36:*.flac=01;36\
*.odt=00;31:*.pdf=00;31"

# Set vim as default editor
export EDITOR="vim"

# Force applications to use default language
export LC_ALL="en_US.UTF-8"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# ZSH completions
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# Change history stamps to UK time
HIST_STAMPS="dd/mm/yyyy"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git)
plugins=(zsh-syntax-highlighting)

# ZSH options
setopt completeinword
setopt extended_glob

# Some aliases
alias dl='youtube-dl'
alias gadd='git add .'
alias commit='git commit -m'
alias push='git push origin master'
alias cfx='vim ~/.xinitrc'
alias cfz='vim  ~/.zprofile'
alias cfs='vim ~/.zshrc'
alias cfw='vim ~/.config/bspwm/bspwmrc'
alias cfm='vim ~/.config/conky/conky.conf'
alias cfl='vim /etc/slim.conf'
alias cfe='vim ~/.vimrc'
alias cft='vim ~/.Xresources'
alias cfk='vim ~/.config/sxhkd/sxhkdrc'
alias cfb='vim /etc/rsnapshot.conf'
alias cff='vim ~/.config/ranger/rc.conf'
alias cfp='vim ~/.config/bspwm/panel/panel'
alias cfi='vim ~/.fehrc'
alias rlt='xrdb ~/.Xresources'
alias rls='source ~/.zshrc'
alias rlk='killall xbindkeys && xbindkeys'
alias cron-test='sudo run-parts --report --test /etc/cron.hourly'
alias wifi='sudo wifi-menu'
alias displays='lxrandr'
alias clean='yaourt -Rns $(yaourt -Qqtd)'
alias remove='yaourt  -Rns'
alias sync='yaourt -Syu'	
alias add='yaourt -S'
alias lpp='pacman -Qen'
alias lpy='pacman -Qm'
alias ls="ls --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias dmesg="dmesg --color"
alias rm="rm -iv"


# Coloured man pages
man() {
	env LESS_TERMCAP_mb=$'\E[01;31m' \
		LESS_TERMCAP_md=$'\E[01;38;5;74m' \
		LESS_TERMCAP_me=$'\E[0m' \
		LESS_TERMCAP_se=$'\E[0m' \
		LESS_TERMCAP_so=$'\E[31;5;246m' \
		LESS_TERMCAP_ue=$'\E[0m' \
		LESS_TERMCAP_us=$'\E[04;38;5;146m' \
		man "$@"
}
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion::complete:cd::' tag-order '! users' -
zstyle ':completion::complete:-command-::' tag-order '! users' -
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*:descriptions' format "- %d -"
zstyle ':completion:*:*:*:*:hosts' list-colors '=*=30;41'
zstyle ':completion:*:kill:*:processes' command "ps x"
#zstyle ':completion:*:manuals.(^1*)' insert-sections true
zstyle ':completion:*:manuals' separate-sections true
#zstyle ':completion:*:*:*:*:users' list-colors'=*=$color[green]=$color[red]'
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle ':completion:*' group-name ''
##zstyle ':completion:*' list-colors 'reply=( "=(#b)(*$VAR)(?)*=00=$color[green]=$color[bg-green]" )'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on
#zstyle ':completion:*' verbose yes
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'

# Set name of the theme to load.
ZSH_THEME="myown"


# Point to oh-my-zsh script
source $ZSH/oh-my-zsh.sh

