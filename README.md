# Nuttx Esp32 Enviroment
Repository with environment to build nuttx for esp32 in windows using WSL2 (Also work in Ubuntu not tested in other linux distro)

## Build the container
``` bash
sudo env UID=$(id -u) GID=$(id -g) docker compose build
```

Execute o container

``` bash
sudo env UID=$(id -u) GID=$(id -g) docker compose run sindri
```

## Build nuttx

### Setup enviroment

To configure the enviroment use the script setup_build, to use the setup script first define the board to be used.
```
./setup_build.sh -a Apolo
```


### Create config file

```
./tools/configure.sh -l esp32s3-devkit:wifi
```

To list available configs type

```
./tools/configure.sh -L | grep esp32  
```


### Build File
```
make  
make -j flash ESPTOOL_BINDIR=./ ESPTOOL_PORT=/dev/ttyUSB0
```

### Connectiong to board

To connect to the board the build enviroment comes with picocom, to connect to the board use the command:
```
picocom -b 115200 /dev/ttyUSB0 
```
To exit picocom use CRTL+A , CTRL + X



# Using USB with WSL2

## Installing

First install usbipd-win

https://github.com/dorssel/usbipd-win/releases

Second in the wsl run the following commands:

```
sudo apt install linux-tools-5.4.0-77-generic hwdata
sudo update-alternatives --install /usr/local/bin/usbip usbip /usr/lib/linux-tools/5.4.0-77-generic/usbip 20
```

## Attaching a device

First ensure a WSL command prompt is open. This will keep the WSL 2 lightweight VM active.

From an administrator command prompt on Windows, run this command. It will list all the USB devices connected to Windows.

```
usbipd wsl list
```
Select the bus ID of the device you’d like to attach to WSL and run this command. You’ll be prompted by WSL for a password to run a sudo command.

```
usbipd wsl attach --busid <busid>
```
Example:
```
usbipd wsl attach --busid 2-3
```

To check for usb connection in WAL2 use ```lsusb``` command

After using detach usb using:
```
usbipd wsl detach --busid=<busid>
```

### Reference for usb install in WSL:
https://devblogs.microsoft.com/commandline/connecting-usb-devices-to-wsl/
