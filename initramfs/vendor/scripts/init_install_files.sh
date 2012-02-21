#!/system/bin/sh
DEST=/system/xbin/su

mount -o remount,rw /system /system

rm /system/lib/hw/lights.GT-N7000.so
cat /vendor/files/lights.BLN.so > /system/lib/hw/lights.GT-N7000.so
chown 0.0 /system/lib/hw/lights.GT-N7000.so
chmod 644 /system/lib/hw/lights.GT-N7000.so

rm /system/app/CWMManager.apk
rm /data/dalvik-cache/*CWMManager.apk*
rm /data/app/eu.chainfire.cfroot.cwmmanager*.apk
cat /vendor/files/CWMManager.apk > /system/app/CWMManager.apk
chown 0.0 /system/app/CWMManager.apk
chmod 644 /system/app/CWMManager.apk

rm /system/app/AppWidgetPicker.apk
rm /data/dalvik-cache/*AppWidgetPicker.apk*
cat /vendor/files/AppWidgetPicker-1.2.3.apk > /system/app/AppWidgetPicker.apk
chown 0.0 /system/app/AppWidgetPicker.apk
chmod 644 /system/app/AppWidgetPicker.apk

# Bravia Engine Install
rm /system/etc/be_movie
rm /system/etc/be_photo
cat /vendor/files/be_movie > /system/etc/be_movie
cat /vendor/files/be_photo > /system/etc/be_photo
chmod 0755 /system/etc/be_movie
chmod 0755 /system/etc/be_photo
chown 0.0 /system/etc/be_movie
chown 0.0 /system/etc/be_photo

# Carrier indicate 1line
rm  /system/etc/spn-conf.xml
cat /vendor/files/spn-conf.xml > /system/etc/spn-conf.xml
chown 0.0 /system/etc/spn-conf.xml
chmod 644 /system/etc/spn-conf.xml

mount -o remount,ro /system /system

