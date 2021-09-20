#!/bin/bash

check_and_install () {
  COMMAND=$1

  if ! command_path="$(type -p "$COMMAND")" || [[ -z $command_path ]]; then
    echo "$COMMAND isn't installed... Installing it with Brew..."
    brew install $COMMAND
  else
    echo "$COMMAND is installed already... Skipping Brew installation"
  fi
}
