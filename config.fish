if status is-interactive
    # Commands to run in interactive sessions can go here
end

export EDITOR="/usr/bin/nvim"

export PATH="$HOME/.local/bin:$PATH"
set -g fish_greeting ''
set -gx PATH /opt/cuda/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

export NVM_DIR="$HOME/.nvm"

# candle gcc bullshit bypass
export NVCC_CCBIN=/bin/clang

export RUSTFLAGS="-C target-cpu=native"

alias ssh="kitty +kitten ssh"
abbr moe "kitty +kitten ssh 82.128.232.173"

# Programs
alias vim="nvim"
alias vi="nvim"
# abbr myst /home/stormy/code/myst/target/debug/myst
# abbr rainbow /home/stormy/code/rainbow/target/debug/rainbow
# abbr clock /home/stormy/code/clock/target/debug/clock
abbr c clock

# Cargo
abbr cr cargo run
abbr ct cargo test
abbr cb cargo build
abbr cw cargo watch -x run
abbr ca cargo add

# Docker
abbr dcb docker compose build
abbr dcu docker compose up

# Git
abbr add git add
abbr commit git commit -m 
abbr push git push
abbr pull git pull
abbr clone git clone

# JS
abbr brd bun run dev
abbr brb bun run build

# Other
abbr cd.. cd ..
alias ls="ls --color -F"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
abbr py python3
abbr o ollama
alias hyfetch="hyfetch --distro arch"
abbr t tmux
abbr tas tmux attach-session -t
abbr tls tmux ls
abbr meta nvim ~/notes/Main/meta.md
abbr main nvim ~/notes/Main

# bind \t forward-char

function build
    cargo build --release
    set program_name (basename (pwd))
    set program_name (string lower $program_name)
    cp target/release/$program_name ~/.local/bin
end

function light
    /home/stormy/.local/bin/kde-theme-switch.sh light
end

function dark
    /home/stormy/.local/bin/kde-theme-switch.sh dark
end

function pmd
    set -l message (string join " " $argv)

    git add '*.md'
    git commit -m "$message"
    git push
end
