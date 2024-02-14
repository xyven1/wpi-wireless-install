# WPI Wireless Install
This repo contians the WPI install script used for getting a cert for wireless connections.

## Running
### Nix
The simplest and recommending way of running this script with with nix:
```bash
nix run github:xyven1/wpi-wireless-install
```
### Non-Nix
If you don't have access to nix, or would prefer not to use it, you can clone the repo and install the program:
```sh
git clone https://github.com/xyven1/wpi-wireless-install
cd wpi-wireless-install
pip install .
```
The program will be avaible as `wpi-wireless-install`
