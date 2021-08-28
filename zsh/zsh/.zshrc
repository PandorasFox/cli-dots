local files=(
  # TODO: maybe drop the ZDOTDIR and move that into the source line??
  $ZDOTDIR/history.zsh
  $ZDOTDIR/prompt.zsh
  $ZDOTDIR/completion.zsh
  $ZDOTDIR/aliases.zsh
  $ZDOTDIR/tmux.zsh
  $ZDOTDIR/keybinds.zsh
  $ZDOTDIR/ssh-agent.zsh
  $ZDOTDIR/env.zsh
)

for i in $files; do
  if [[ -e $i ]]; then
    source $i
  fi
done
