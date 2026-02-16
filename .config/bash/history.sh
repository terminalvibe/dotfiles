##### ------------------------------------------------------------------
##### BASH HISTORY 10_000 LINES && GENERAL CONFIGURATION
##### ------------------------------------------------------------------

# Number of commands to keep in memory
export HISTSIZE=10000

# Number of commands to keep in the history file
export HISTFILESIZE=10000

# History file location
export HISTFILE=~/.bash_history

# Add timestamps to history entries
export HISTTIMEFORMAT='%F %T  '

# ignoredups   - do not record a command if it matches the previous one
# erasedups    - remove all previous duplicates when a command is added
# ignorespace  - do not record commands that start with a space
export HISTCONTROL=ignoredups:erasedups:ignorespace

# Ignore useless or noisy commands (pattern-based, not regex)
export HISTIGNORE='ls:ls *:ll:l:la:lt:\
cd:cd *:pwd:\
clear:reset:history:\
exit:logout:\
fg:bg:jobs:\
* --help:* -h:\
man *:info *'

# Append to history file instead of overwriting it
shopt -s histappend

# After each command:
# - append new history lines to the file
# - read new lines from the file
# - reload history to avoid duplicates across multiple terminals
PROMPT_COMMAND='history -a; history -n; history -c; history -r'
