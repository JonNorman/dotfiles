alias ls='ls -G'
alias rm='rm -i'

# colourify ls
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
export CLICOLOR=1
export LSCOLORS=CaeaxxxxBxxxxxxxxxCaCa

export PAGER=less
export HISTFILESIZE=10000          # Store 5000 commands in history
export HISTCONTROL=ignoredups:ignorespace    # Don't put duplicate lines in the history.

# Exports
export EDITOR=vim

export PS1="[\[\e[0;31m\]\u\[\e[m\]@\[\e[0;35m\]\h \[\e[1;32m\]\w\[\e[m\]]> "