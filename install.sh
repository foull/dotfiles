#!/bin/sh
TARGET=${3:-"$HOME"}
VARIANT=${2:-"mac"}
TASK=${1:-"default"}

# to install only static configuration files and aliasses for bash use:
# ./install.sh default static

echo "./bin/homemaker --verbose --task=$TASK --dest $TARGET --variant=$VARIANT config.toml ."

./bin/homemaker --verbose --task=$TASK --dest $TARGET --variant=$VARIANT config.toml .
