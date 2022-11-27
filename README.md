# Unlock Steam Deck

## Credit
Credit goes to Chris Titus for the hard work of figuring out the steps to unlock the steam deck. This script is an automation of his steps.

## What Is It?
Running the script `unlock_steam_deck.sh` unlocks the Steam Deck to allow more advanced users to install packages using the AUR (`yay` comes included) or default package manager, `pacman`.

## How To Use It
To use the script, simply run it in the terminal! For help on that, open a terminal and keep reading:
1. Download the script. Try doing it one of two ways:
    a. Go to [https://github.com/joshua-holmes/unlock-steam-deck/] (https://github.com/joshua-holmes/unlock-steam-deck/) in a browser and click the green "Code" button, then click on Download ZIP. Then unzip the downloaded file.
    b. Run the following in the directory of your choice:
    ```git clone https://github.com/joshua-holmes/unlock-steam-deck.git```
2. In the terminal, travel into the directory of the folder you just downloaded on GitHub:
```cd /path/to/folder```
You should be able to run `ls` and see the `unlock_steam_deck.sh` script.
3. Change permissions of the script so it is runnable.
```sudo chmod +x unlock_steam_deck.sh```
4. Run the script using sudo. It could take several minutes, so be patient.
```sudo ./unlock_steam_deck.sh```

## When to use it?
This script will need to be run everytime the Steam Deck is booted, because several settings that the script modifies are reset by SteamOS on boot. See below for a way of automating this.

## Automation
To automate this unlocking process so the Steam Deck is always unlocked, follow these steps:
1. Download the script into the directory of your choice. See steps 1-3 in the 'How To Use It' section above for help. Don't forget step 3.
2. Install a task scheduler, such as Cron:
```sudo pacman -S cronie```
3. 

Welcome to the Unoffical BeamMP Installer! This program was created to make it easier for Linux users to install and run the BeamMP (BeamNG.drive multiplayer) mod on Linux devices! The mod is currently only available for Windows.

To make BeamMP work manually, BeamMP must be installed on the same Proton prefix that BeamNG is installed on, then BeamMP must be run using Steam's Experimental version of Proton. If it is not done correctly, BeamMP may run with distracting black boxes scattered around the map, or it may not run at all.

This installer comes with a full GUI that provides a user-friendly way to do one or both of the following things:
1. Correctly install BeamMP
2. Install a custom BeamMP launcher that makes it easy to run BeamMP on Linux

## How to Get the Installer


## How to Use the Installer


## How to Run BeamMP After Installation


## Made by
Joshua Holmes<br/>
[jpholmes.com](https://www.jpholmes.com)<br/>
[linkedin.com/in/joshua-phillip-holmes](https://www.linkedin.com/in/joshua-phillip-holmes/)<br/>
[github.com/joshua-holmes](https://github.com/joshua-holmes)<br/>
[joshua.phillip.holmes@gmail.com](mailto:joshua.phillip.holmes@gmail.com)