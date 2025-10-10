#!/usr/bin/env bash
set -e

if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# Install Homebrew jika belum ada
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating brew..."
brew update

echo "Installing CLI tools..."
brew install \
  fish \
  starship \
  fzf \
  zoxide \
  bat \
  eza \
  ripgrep \
  fd \
  git \
  git-delta \
  thefuck \
  stow \
  atuin \
  go php composer oven-sh/bun/bun

echo "Done!"
