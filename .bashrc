# Enable the subsequent settings only in interactive sessions
case $- in
*i*) ;;
*) return ;;
esac

for file in ~/.config/bash/*.sh; do
  [ -r "$file" ] && source "$file"
done

# Auto-start tmux
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t main || tmux new-session -s main
fi
