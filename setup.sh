#MIT License
#Copyright (c) 2024 Daniel Gunther

#For the full license text, see the LICENSE.txt file in the docs directory.
#If LICENSE.txt is not included, this version of the source code is provided in breach of this license.

#******************************************************

#!/usr/bin/env bash

if (! command -v docker &> /dev/null); then
    echo "Docker is not installed on your system."
    echo "Please install and enable docker and/or docker desktop depending on your system and then rerun the script"
    exit 1
else
    echo "Docker is already installed. Proceeding with alias setup."
fi

ALIAS_NAME="pyroxene"
DEBUG_ALIAS_NAME="pyroxene-debug"
PYROX_PATH="$(pwd)/run_driver.sh"
DEBUG_PYROX_PATH="$(pwd)/run_debug_driver.sh"

if [[ $SHELL == *"zsh"* ]]; then # if the user is using zsh, then set the shell config to "~/.zshrc"
    SHELL_CONFIG_FILE="$HOME/.zshrc"
elif [[ $SHELL == *"bash"* ]]; then # if the user is using bash, then set the shell config to "~/.bashrc"
    SHELL_CONFIG_FILE="$HOME/.bashrc"
else # ADD SUPPORT FOR WINDOWS SHELLS LATER!!!
    echo "Unsupported shell: $SHELL. Please add aliases to shell config file manually, or use default scripts provided."
    exit 1
fi

if (! grep -q "alias $ALIAS_NAME=" "$SHELL_CONFIG_FILE"); then # looks for the alias "pyroxene" in the shell configuration file
    CONSENT="N"
    read -p "Do you consent to modifying the shell config file to add aliases for 'pyroxene' and 'pyroxene_debug'? [y/N] " CONSENT
    CONSENT=$(echo "$CONSENT" | tr '[:upper:]' '[:lower:]')
    if [[ "$CONSENT" != "y" ]]; then
        echo "Aliases not created, please use drivers described in /docs/start to run default shell commands"
        exit 1
    fi
    
    echo "alias $ALIAS_NAME='$PYROX_PATH'" >> "$SHELL_CONFIG_FILE" # adds the alias "pyroxene" that is equivalent to ~/run_driver.sh into the users shell config file
    echo "alias $DEBUG_ALIAS_NAME='$DEBUG_PYROX_PATH'" >> "$SHELL_CONFIG_FILE" # adds the alias "pyroxene-debug" to the shell config file
    echo "Aliases '$ALIAS_NAME' and '$DEBUG_ALIAS_NAME' added to $SHELL_CONFIG_FILE." # outputs the the user that the aliases have been successfully added
else # if the aliases already exist...
    echo "Aliases already exist in $SHELL_CONFIG_FILE. No changes made." # inform the user and move on
fi
