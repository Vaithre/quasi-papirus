#!/bin/bash

DEST="$HOME/.local/share/icons/quasi-papirus"

# Colors
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
RESET='\033[0m'

echo -e "${BLUE}Quasi-Papirus Uninstaller${RESET}"
echo

if [ ! -d "$DEST" ]; then
    echo -e "${YELLOW}Quasi-Papirus is not installed.${RESET}"
    echo "Nothing to uninstall."
    exit 0
fi

echo "This script will remove the installed Quasi-Papirus theme from:"
echo "  $DEST"
echo
echo -e "${YELLOW}Before uninstalling, make sure you have selected a different icon theme in your System Settings.${RESET}"
echo "This helps avoid inconsistencies after removing Quasi-Papirus."
echo

read -p "$(echo -e "${YELLOW}Do you want to continue? [y/N]: ${RESET}")" CONFIRM

case "$CONFIRM" in
    [yY]|[yY][eE][sS])
        echo
        echo -e "${YELLOW}Uninstalling Quasi-Papirus...${RESET}"

        rm -rf "$DEST"

        echo
        echo -e "${GREEN}Quasi-Papirus was successfully uninstalled.${RESET}"
        ;;
    *)
        echo -e "${YELLOW}Operation cancelled.${RESET}"
        exit 0
        ;;
esac
