# OfonoPhonesimAutorun

Alternative ofono-phonesim-autostart for Ubuntu 20.04.

It is useful to using HSP/HFP bluetooth headset microphone.

## How to use

```bash
./phonesim-autostart.sh
```

If you cannot execute the shell file, run `chmod +x ./phonesim-autostart.sh`

### Add Service to the Linux System Daemon

If you want to run Phonesim automatically,
you should change appropriate `User` and `ExecStart` parameters in the `phonesim-autorun.service` file.

The `User` parameter should be written as your own Linux account user name,
and the `ExecStart` parameter should be changed as an absolute path of the `phonesim-autostart.sh` file (with a `--service` argument)

> NOTE: Do not use a relative path!

For example,

```
[Unit]
Description=Ofono Phonesim Autorun Service
After=ofono.service

[Service]
Type=simple
User=ubuntu
ExecStart=/home/ubuntu/Documents/OfonoPhonesimAutorun/phonesim-autostart.sh --service

[Install]
WantedBy=multi-user.target
```

Next, you should copy the file to `/lib/systemd/system` or `/etc/systemd/system`, and enable and start it.

```bash
sudo cp ./phonesim-autorun.service /lib/systemd/system
sudo systemctl enable phonesim-autorun.service
sudo systemctl restart ofono.service
sudo systemctl start phonesim-autorun
```

> NOTE: You should check whether the services are active or not. You can check to input `sudo systemctl status ofono` or `phonesim-autorun`.

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
