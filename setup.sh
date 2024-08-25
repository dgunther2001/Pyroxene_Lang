#MIT License
#Copyright (c) 2024 Daniel Gunther

#For the full license text, see the LICENSE.txt file in the docs directory.
#If LICENSE.txt is not included, this version of the source code is provided in breach of this license.

#******************************************************

#!/usr/bin/env bash

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
