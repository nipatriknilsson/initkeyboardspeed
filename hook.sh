#!/bin/sh
# kbdrate hook script

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

. /usr/share/initramfs-tools/hook-functions
# Begin real processing below this line

if [ ! -x "/sbin/kbdrate" ]; then
   exit 0
fi

# force_load frobnicator interval=10
cp /sbin/kbdrate "${DESTDIR}/sbin"
exit 0

