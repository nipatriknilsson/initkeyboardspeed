# initkeyboardspeed
Control upstart console keyboard speed for Debian based systems

Initkeyboardspeed creates a software package for your Debian based system and controls the console keyboard repeat speed. Normally this speed is set to the maximum rate, which can make it hard to type. The console controlled is the one used during entering of your Cryptsetup password or dropped to rescue mode on Desktop machines. For a server install this is the console used all time.

The package has been tested with several versions of Debian and Ubuntu.

When installed to your Debian based system, keyboard speeds to the console is set with "kbdrate". 

To create a debian package enter
```
debuild
```

Then you can install it with
```
dpkg -i ../initkeyboardspeed*.deb
```
