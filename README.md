# backlight - simple backlight script for Linux systems
This script is a simple alternative to programs like [light](https://github.com/haikarainen/light)
and [backlightctl](https://github.com/hellerbarde/backlightctl). It works with
X11, Wayland, and the Linux console.

I wrote this because both backlightctl and light seemed to be an unnecessary use of
a C program for something that can be very easily done in a shell script.

## Installing
To install, simply run
```
sudo make install
```

It should be noted that you must be part of the `video` group to use this program.
If you are not already in this group, simply run:
```
sudo usermod -a -G video $(whoami)
```

## Usage
### getting backlight value
```
backlight get
```
### setting backlight value
```
backlight set 50
```
### incrementing backlight value
```
backlight set +5
```
### decrementing backlight value
```
backlight set -5
```
