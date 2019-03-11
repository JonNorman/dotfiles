# Begin ~/.bash_profile
# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.

if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

# The next line updates PATH for the Google Cloud SDK.
# if [ -f /Users/jon_norman/google-cloud-sdk/path.bash.inc ]; then
#   source '/Users/jon_norman/google-cloud-sdk/path.bash.inc'
# fi

# The next line enables shell command completion for gcloud.
# if [ -f /Users/jon_norman/google-cloud-sdk/completion.bash.inc ]; then
#   source '/Users/jon_norman/google-cloud-sdk/completion.bash.inc'
# fi
