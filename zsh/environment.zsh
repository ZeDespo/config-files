
# Colors
export COLORTERM=truecolor

# XDG Stuff
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export ZSH_CONFIG="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"
export ZSH_PLUGINS="$ZSH_CONFIG/plugins"
mkdir -p $ZSH_CACHE

# CUDA
export CUDA_HOME="/usr/local/cuda-11.7"
export LD_LIBRARY_PATH="/usr/local/cuda/targets/x86_64-linux/lib:$LD_LIBRARY_PATH"
export PATH="$CUDA_HOME/bin${PATH:+:${PATH}}"

# NVM
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
eval source <(/usr/local/bin/starship init zsh --print-full-init)

# executable search path
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/sbin:$PATH
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.config/tmux/plugins/tmuxifier/bin:$PATH"

# To maintain same version of neovim without hassle
export PATH="$HOME/.config/nvim-linux64/bin:$PATH"

# Standardize date
export DATE=$(date +%Y-%m-%d)

# Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv > /dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Rust
. "$HOME/.cargo/env"

# Starship CONFIG file
export STARSHIP_CONFIG="$HOME/.config/starship.toml"

# tmuxifier setup
eval "$(tmuxifier init -)"
