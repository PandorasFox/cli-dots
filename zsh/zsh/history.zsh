# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
setopt sharehistory
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$ZDOTDIR/.zsh_history
