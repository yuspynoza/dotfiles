# ========== Prompt & Tool Init ==========
fish_ssh_agent

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

starship init fish | source
fzf --fish | source
zoxide init fish | source
atuin init fish | source
thefuck --alias | source

# ========== ENV ==========
set -gx PATH $PATH (go env GOPATH)/bin .config/composer/vendor/bin

# ========== Aliases ==========
alias mkdir="mkdir -p"
alias c="clear"
alias ls="eza --icons"
alias ll="eza -lah --git --icons"
alias la="eza -a --icons"
alias ltree="eza -T -L 2 --icons"

alias cat="bat"
alias find="fd"
alias grep="rg"
alias less="bat --paging=always"

alias cd="z"  # gunakan zoxide sebagai pengganti cd
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias gs="git status"
alias gd="git diff | delta"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"

alias hist="atuin search"  # jika pakai atuin
alias fuck="thefuck"

# ========== fzf Keybindings (opsional) ==========
# set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"

