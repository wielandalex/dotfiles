if ! [[ "$PATH" =~ "$HOME/.local/bin" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi
export PATH

alias vim="nvim"
export EDITOR="nvim"

alias ts="tmux-sessionizer"

