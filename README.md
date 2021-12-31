# initkeyboardspeed
Control upstart console keyboard speed for Debian based systems

Initkeyboardspeed creates a software package for your Debian based system. When installed the initial console keyboard repeat speed is set to a lower repeat. Normally this speed is set to the maximum rate, which can make it hard to type.

The console controlled by this package is the one used when entering of your Cryptsetup password or dropped into rescue mode on Desktop machines. For a server install this is the console used all time.

Backlight of your keyboard is switched on during entering of your cryptsetup password.

The package has been tested with several versions of Debian and Ubuntu systems.

When installed to your Debian based system, keyboard speed to the console is set with "kbdrate". Takes effect on reboot.

To create a debian package enter
```
debuild -i -us -uc -b
```

Then you can install it with (as super user)
```
dpkg -i ../initkeyboardspeed*.deb
dpkg --configure -a
```
