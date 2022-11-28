# Unlock Steam Deck

## Credit
Credit goes to Chris Titus for the hard work of figuring out the steps to unlock the steam deck. This script is an automation of his steps.

## What Is It?
This program unlocks the Steam Deck to allow more advanced users to install packages using the AUR (`yay`) or default package manager (`pacman`). However, the Steam Deck locks itself again on reboot. So I have included a second script to automatically unlock the Steam Deck on boot, if a more permanent option is desired.

The `unlock_steam_deck.sh` script that comes included is the star of the show and unlocks the Steam Deck.

The `setup.sh` script installs the `unlock_steam_deck.sh` script as `/usr/bin/unlock-steam-deck` and creates a systemd service to have it run automatically on boot.

## How To Use It
For both methods below, the `unlock_steam_deck.sh` script is used and it takes a while to run. Please give it several minutes to finish before attempting to install a package.

### Automatic Method
To setup the Steam Deck to be unlocked automatically every time it boots up, run the `setup.sh` script. For help with that, run each of these commands in your terminal:
```
git clone https://github.com/joshua-holmes/unlock-steam-deck.git
cd ./unlock-steam-deck
sudo chmod +x setup.sh
sudo bash setup.sh
cd ..
rm --force --recursive ./unlock-steam-deck
```
Next time you reboot, the unlocking script runs in the background and takes several minutes. You will likely boot into the main desktop of the OS before the script is finished. Please wait several minutes for the script to finish. You can use the following command to see if the script has finished running:
```
sudo systemctl status unlock-steam-deck
```
You will see "inactive (dead)" if the script is complete, and "active (running)" if it is still running.

### Manual Method
To unlock the Steam Deck once, run the `unlock_steam_deck.sh` script. For help with that, run each of these commands in your terminal:
```
git clone https://github.com/joshua-holmes/unlock-steam-deck.git
cd ./unlock-steam-deck
sudo chmod +x unlock_steam_deck.sh
sudo bash unlock_steam_deck.sh
```
The Steam Deck will lock itself again on boot. Use the automatic method if you do not want to repeat the process each time the Deck is booted.

## Made by
Joshua Holmes<br/>
[jpholmes.com](https://www.jpholmes.com)<br/>
[linkedin.com/in/joshua-phillip-holmes](https://www.linkedin.com/in/joshua-phillip-holmes/)<br/>
[github.com/joshua-holmes](https://github.com/joshua-holmes)<br/>
[joshua.phillip.holmes@gmail.com](mailto:joshua.phillip.holmes@gmail.com)