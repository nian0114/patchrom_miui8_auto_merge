rm -rf out/$1*
make out/$1.jar
adb remount
adb push out/$1.jar /system/framework/
adb reboot
