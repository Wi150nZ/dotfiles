#!/bin/bash

EXT_FILE="./configurations/vscode/extensions.txt"
CODE_EXIST=$(command -v code)

# check if extensions file argument was passed
if [ -z "$EXT_FILE" ]
then
  echo "extensions file cannot be found in the ./configurations/vscode/ directory"
  exit 1
fi

# check if code exists in the environment
if [ -z "$CODE_EXIST" ]
then
  echo "command code not found, make sure to install code in path via vscode"
  exit 1
fi

while IFS= read -r line; do
  # todo: run code --install-extension <extension>
  echo "Text read from file: $line"
done < "$EXT_FILE"