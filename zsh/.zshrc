# My Zsh configuration file

# --- General environment variables ---
[ -f "$HOME/.env" ] && source "$HOME/.env"

# --- Alias definitions ---
[ -f "$HOME/.zsh_aliases" ] && source "$HOME/.zsh_aliases"

# --- PATH modifications ---
if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# --- Oh My Zsh core settings ---
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="kafeitu"
DISABLE_AUTO_TITLE="true"

# --- Plugins ---
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# --- Source Oh My Zsh ---
source $ZSH/oh-my-zsh.sh

# --- Prompt (starship) ---
eval "$(starship init zsh)"

# --- NVM (Node Version Manager) ---
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"