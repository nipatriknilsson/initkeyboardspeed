#!/bin/sh
# kbdrate boot script

PREREQ=""
prereqs()
{
   echo "$PREREQ"
}

case $1 in
prereqs)
   prereqs
   exit 0
   ;;
esac

# Begin real processing below this line

# log_begin_msg "Stopping /sbin/kbdrate"
/sbin/find /sys/class/leds -mindepth 1 -maxdepth 1 -name '*kbd_backlight' 2>/dev/null | /sbin/xargs -r -I '{}' -- "/sbin/kbdbacklightledoff" '{}'
# log_end_msg

exit 0
