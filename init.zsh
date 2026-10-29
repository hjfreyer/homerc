# Enable persistent history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# Configure the push directory stack (most people don't need this)
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

# Initialize completion
autoload -U compinit; compinit

# Fix Ctrl+Arrow keys for word navigation
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

export PATH="$HOME/.local/bin:$PATH"

eval "$(mise activate zsh)"


# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Set up zoxide to move between folders efficiently
eval "$(zoxide init zsh)"

# Set up the Starship prompt
eval "$(starship init zsh)"

