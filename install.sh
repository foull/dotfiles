#!/bin/sh
TASK=${1:-"default"}
VARIANT=${2:-"linux"}
TARGET=${3:-"$HOME"}

echo "./bin/homemaker --verbose --task=$TASK --dest $TARGET --variant=$VARIANT config.toml ."

./bin/homemaker --verbose --task=$TASK --dest $TARGET --variant=$VARIANT config.toml .
