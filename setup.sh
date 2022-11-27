#!/bin/bash
set -e

if [ $(whoami) != root ];
then
    echo "This script must be run as root"
    exit 1
fi

curDir="$(dirname $0)"
dirOfScript=/usr/bin/unlock-steam-deck

cp "${curDir}/unlock_steam_deck.sh" "$dirOfScript"
chmod 755 "$dirOfScript"

echo "\nCreated script called `/usr/bin/unlock-steam-deck`."

sudo echo "[Unit]
Description=Unlock Steam Deck

[Service]
User=root
ExecStart=${dirOfScript}

[Install]
WantedBy=multi-user.target
" > /etc/systemd/system/unlock-steam-deck.service

echo "\nCreated systemd service called `unlock-steam-deck.service`"
systemctl enable unlock-steam-deck.service
echo "Enabled systemd service"
systemctl start unlock-steam-deck.service
echo "Started systemd service. Currently unlocking Steam Deck in the background."
echo "Allow several minutes for completion."

echo "\nSetup complete. Command `unlock-steam-deck` will now be run at the"
echo "beginning of every boot using systemd. The script takes several minutes"
echo "to run, so please wait after reboot until script is complete before using"
echo "unlocked features. Run `sudo systemctl status unlock-steam-deck` to check"
echo "status of unlocking process."