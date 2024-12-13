fish_ssh_agent

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Prompt
oh-my-posh init fish --config (brew --prefix oh-my-posh)/themes/catppuccin.omp.json | source

# Exports
#set PATH $PATH (go env GOPATH)/bin
set PATH (string match -v "/mnt/c/*" $PATH) (go env GOPATH)/bin "/mnt/c/Users/Yuspy/AppData/Local/Programs/Microsoft VS Code/bin"

# Aliases
alias mkdir="mkdir -p"
alias c="clear"
alias cat="bat"

# Shell integration
fzf --fish | source
zoxide init --cmd cd fish | source

function clean
  set -l curdir (basename $PWD)
  cd ..
  rm -rf $curdir
  mkdir $curdir
  cd $curdir
end
