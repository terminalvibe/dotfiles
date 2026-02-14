# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

for file in ~/.config/bash/*.sh; do
    [ -r "$file" ] && source "$file"
done




