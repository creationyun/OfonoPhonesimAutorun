# OfonoPhonesimAutorun

Alternative ofono-phonesim-autostart for Ubuntu 20.04.

It is useful to using HSP/HFP bluetooth headset microphone.

> Coming soon: I am making a systemctl service file...

## How to use

```bash
./phonesim-autostart.sh
```

If you cannot execute the shell file, run `chmod +x ./phonesim-autostart.sh`

## Requisites

You need to install python3, ofono, and ofono-phonesim, and modify settings in the [link](https://askubuntu.com/questions/831331/failed-to-change-profile-to-headset-head-unit).

```bash
sudo add-apt-repository ppa:smoser/bluetooth
sudo apt-get update
sudo apt-get install python3 python3-dbus ofono ofono-phonesim
```

Reference Link
+ https://askubuntu.com/questions/831331/failed-to-change-profile-to-headset-head-unit
+ https://askubuntu.com/questions/1242450/when-will-add-ofono-phonesim-to-the-focal-repository-20-04
