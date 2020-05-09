#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="\[\`if [[ \$? = "0" ]]; then echo '\e[32m\h\e[0m'; else echo '\e[31m\h\e[0m' ; fi\`:\w\n\--> "
#PS1="$(tput setaf 166)[\u@\h \W]--> $(tput sgr0)";

#[ -z "$TMUX" ] && command -v tmux > /dev/null && TERM=xterm-256color && exec tmux
export PS1;
set -o vi
screenfetch

export PATH=$HOME/bin:/usr/local/bin:$PATH


alias vi=nvim
alias vim=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'
