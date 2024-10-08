# Color scheme picker
alias kitty-theme="kitty +kitten themes"

# Shorthand for editing configs
alias vz="$EDITOR ~/.zshrc"
alias vl="$EDITOR ~/.local.zsh"
alias va="$EDITOR ~/.alias.zsh"
alias vt="$EDITOR ~/.tmux.conf"

# Git shorthand
alias gcob="git checkout -b"
alias gcom="git checkout main"
alias gfom="git fetch origin main"
alias gpocb="git push origin $(git rev-parse --abbrev-ref HEAD)"
alias gpom="git push origin main"
alias grom="git rebase --interactive origin/main"

# Shorthand commands
alias k="clear"
alias sz="source ~/.zshrc"
alias cati="kitty icat"
alias v="$EDITOR ."
alias n="$EDITOR ."

# Clipboard
alias pbcopy="xclip -selection clipboard"

# Scripts
bindkey -s ^f "tmux-sessionizer.sh\n"
