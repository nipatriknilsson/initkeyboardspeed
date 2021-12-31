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
if [ ! -x "/sbin/kbdrate" ]; then
   panic "/sbin/kbdrate executable not found"
fi

# log_begin_msg "Starting initkeyboardspeed"
/sbin/kbdrate -r 20 -d 1000 || panic "/sbin/kbdrate failed"
/sbin/find /sys/class/leds -mindepth 1 -maxdepth 1 -name '*kbd_backlight' 2>/dev/null | /sbin/xargs -r -I '{}' -- "/sbin/kbdbacklightledon" '{}'
# log_end_msg

exit 0
