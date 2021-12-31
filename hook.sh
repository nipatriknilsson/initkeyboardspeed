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

if [ ! -x "/usr/bin/find" ]; then
   exit 0
fi

if [ ! -x "/usr/bin/xargs" ]; then
   exit 0
fi

# force_load frobnicator interval=10
cp /sbin/kbdrate "${DESTDIR}/sbin"

cp /usr/bin/find "${DESTDIR}/sbin"

cp /usr/bin/xargs "${DESTDIR}/sbin"

echo >  "${DESTDIR}/sbin/kbdbacklightledon" 'cd $1'
echo >> "${DESTDIR}/sbin/kbdbacklightledon" 'cat max_brightness > brightness'
chmod +x "${DESTDIR}/sbin/kbdbacklightledon"

echo >  "${DESTDIR}/sbin/kbdbacklightledoff" 'cd $1'
echo >> "${DESTDIR}/sbin/kbdbacklightledoff" 'echo 0 > brightness'
chmod +x "${DESTDIR}/sbin/kbdbacklightledoff"

exit 0

