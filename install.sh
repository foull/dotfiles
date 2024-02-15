#!/bin/sh
TASK=${1:-"default"}
VARIANT=${2:-"linux"}

echo "./bin/homemaker --verbose --task=$TASK --dest $HOME --variant=$VARIANT config.toml ."

./bin/homemaker --verbose --task=$TASK --dest $HOME --variant=$VARIANT config.toml .

echo ''
echo 'Add  ~/.profile-dotfiles to ~/.profile by running command:'

echo "echo 'source ~/.profile-dotfiles' >> ~/.profile"
