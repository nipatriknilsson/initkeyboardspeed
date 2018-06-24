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

# log_begin_msg "Starting /sbin/kbdrate"
/sbin/kbdrate -r 20 -d 2000 || panic "/sbin/kbdrate failed"
# log_end_msg

exit 0
