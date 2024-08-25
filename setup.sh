#MIT License
#Copyright (c) 2024 Daniel Gunther

#For the full license text, see the LICENSE.txt file in the docs directory.
#If LICENSE.txt is not included, this version of the source code is provided in breach of this license.

#******************************************************

#!/usr/bin/env bash

if ! command -v docker &> /dev/null; then
    echo "Docker is not installed on your system."
    
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "To install docker, run the following commands:"
        echo "sudo apt-get update"
        echo "sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common"
        echo "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg"
        echo "echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null"
        echo "sudo apt-get update"
        echo "sudo apt-get install -y docker-ce docker-ce-cli containerd.io"
        echo "sudo systemctl start docker"
        echo "sudo systemctl enable docker"
        exit 1
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        echo "To install docker, go to https://www.docker.com/products/docker-desktop/ and install docker desktop"
        exit 1
else
    echo "Docker is already installed. Proceeding with alias setup"
fi

ALIAS_NAME="pyroxene"
DEBUG_ALIAS_NAME="pyroxene-debug"
PYROX_PATH="$(pwd)/run_driver.sh"
DEBUG_PYROX_PATH="$(pwd)/run_debug_driver.sh"

if [[ $SHELL == *"zsh"* ]]; then # if the user is using zsh, then set the shell config to "~/.zshrc"
    SHELL_CONFIG="$HOME/.zshrc"
elif [[ $SHELL == *"bash"* ]]; then # if the user is using bash, then set the shell config to "~/.bashrc"
    SHELL_CONFIG="$HOME/.bashrc"
else # ADD SUPPORT FOR WINDOWS SHELLS LATER!!!
    echo "Unsupported shell: $SHELL. Please add aliases to shell config file manually, or use default scripts provided."
    exit 1
fi

if (! grep -q "alias $ALIAS_NAME=" "$SHELL_CONFIG"); then # looks for the alias "pyroxene" in the shell configuration file
    echo "alias $ALIAS_NAME='$PYROX_PATH'" >> "$SHELL_CONFIG" # adds the alias "pyroxene" that is equivalent to ~/run_driver.sh into the users shell config file
    echo "alias $DEBUG_ALIAS_NAME='$DEBUG_PYROX_PATH'" >> "$SHELL_CONFIG" # adds the alias "pyroxene-debug" to the shell config file
    echo "Aliases '$ALIAS_NAME' and '$DEBUG_ALIAS_NAME' added to $SHELL_CONFIG." # outputs the the user that the aliases have been successfully added
else # if the aliases already exist...
    echo "Aliases already exist in $SHELL_CONFIG. No changes made." # inform the user and move on
fi
