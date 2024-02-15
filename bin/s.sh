#!/bin/bash

# Define the associative array (dictionary)
declare -A commands=(
    ["k"]="cat ~/.ssh/id_rsa.pub"
    ["vps-de"]="ssh ubuntu@vps-c4a67777.vps.ovh.net"
    ["vps-waw"]="ssh vps-7e0a18da.vps.ovh.net -l ubuntu"
    ["md-f17"]="ssh s9.mydevil.net -l f17"
    ["md-santri-dev"]="ssh s11.mydevil.net -l santri-dev"
)

# Function to print keys and values in specific colors
function print_commands {
    for key in $(echo "${!commands[@]}" | tr ' ' '\n' | sort); do
        echo -e "$key: \e[90m${commands[$key]}\e[0m"
    done
}

# Check if user provided a parameter
if [ $# -eq 0 ]; then
    # No parameters, print all keys and values
    print_commands
else
    # User provided a parameter, check if it's a valid key
    if [[ -v commands[$1] ]]; then
        # Valid key, execute the command
        echo "${commands[$1]}"
        eval "${commands[$1]}"
    else
        # Invalid key, print error message
        echo "Invalid command: \$1"
        exit 1
    fi
fi
