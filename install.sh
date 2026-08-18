#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="$SCRIPT_DIR/quasi-papirus"
DEST="$HOME/.local/share/icons/quasi-papirus"

# Colors
BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RESET='\033[0m'

echo -e "${BLUE}Quasi-Papirus Installer${RESET}"
echo

if [ -d "$DEST" ]; then
    ACTION="updated"

    echo "This script will update the installed Quasi-Papirus theme using the contents of:"
    echo "  $SOURCE"
else
    ACTION="installed"

    echo "This script will install the contents of:"
    echo "  $SOURCE"
fi

echo
echo "to:"
echo "  $DEST"
echo

read -p "$(echo -e "${YELLOW}Do you want to continue? [y/N]: ${RESET}")" CONFIRM

case "$CONFIRM" in
    [yY]|[yY][eE][sS])

        if [ "$ACTION" = "updated" ]; then
            echo
            echo -e "${YELLOW}Updating Quasi-Papirus...${RESET}"
        else
            echo
            echo -e "${YELLOW}Note:${RESET} The initial installation may take a few minutes."
            echo
            echo -e "${YELLOW}Installing Quasi-Papirus...${RESET}"
            mkdir -p "$DEST"
        fi

        rsync -a --delete --info=progress2 "$SOURCE"/ "$DEST"/

        echo
        echo
        echo -e "${GREEN}Quasi-Papirus was successfully $ACTION:${RESET}"
        echo "  $DEST"
        ;;
    *)
        echo -e "${YELLOW}Operation cancelled.${RESET}"
        exit 0
        ;;
esac
