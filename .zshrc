# ~/.zshrc

###############
# zsh settings
###############
autoload -U compinit
compinit

bindkey -e

autoload colors
colors

PROMPT="[%m:%/] "
PROMPT2="[%m:%/] "
SPROMPT="%{${fg[red]}%}%r is correct? [n,y,a,e]:%{${reset_color}%} "

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups
setopt share_history

setopt auto_cd
setopt auto_pushd
setopt list_packed
setopt noautoremoveslash
setopt nolistbeep
setopt correct

autoload zed

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

###############
#  zsh plugins
###############
if [[ -f $HOME/.zsh/antigen/antigen.zsh ]]; then
    source $HOME/.zsh/antigen/antigen.zsh
    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle zsh-users/zsh-completions src
    antigen apply
fi

############
#  My alias
############
alias ll="ls -l"
alias la="ls -A"
alias l="ls -CF"
alias h="history"

alias less='less -M'
alias grep='grep --color'

alias runserver='python2.5 manage.py runserver --adminmedia=media/admin'
alias rungae='python2.5 manage.py runserver 9000'
alias runkay='python2.5 manage.py runserver'

##################
# screen settings
##################
if [ "$TERM" = "screen" ]; then
    export PS1="[%m:$WINDOW:%/]# " # for zsh.
fi

##################
# python settings
##################
export PYTHONSTARTUP=~/.pythonstartup

# pythonbrew
if [ -s "$HOME/.pythonbrew/etc/bashrc" ]; then
    source "$HOME/.pythonbrew/etc/bashrc"
    # exec command like virtualenvwrapper
    alias mkvirtualenv="pythonbrew venv create"
    alias rmvirtualenv="pythonbrew venv delete"
    alias workon="pythonbrew venv use"
fi

##################
# Heroku settings
##################
export PATH="/usr/local/heroku/bin:$PATH"

##################
#  rbenv settings
##################
#export PATH="$PATH:$HOME/.rbenv/bin"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

##################
# Docker settings
##################
export DOCKER_HOST=tcp://localhost:4243

#######################################################
# The next line updates PATH for the Google Cloud SDK.
#######################################################
export PATH="/Users/tayutaedomo/project/google-cloud-sdk/bin:$PATH"
source /Users/tayutaedomo/project/google-cloud-sdk/completion.zsh.inc
