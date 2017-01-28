#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

device_name=`grep "ro.product.device=" stockrom/system/build.prop | cut -d '=' -f2`
curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name "*.patch"`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}

function isPatchrom() {
  sed -i -e "s/\"hammerhead\"/\"$device_name\"/g" `grep -lnr "hammerhead" $1/smali`
}

function changeID() {
  $PORT_ROOT/tools/idtoname.py $PORT_ROOT/tools/public-$2.xml $1/smali
  $PORT_ROOT/tools/nametoid.py out/framework-res/res/values/public.xml $1/smali
}

if [ $1 = "DeskClock" ];then
    isPatchrom $2
fi

if [ $1 = "MiuiKeyguard" ];then
    applyPatch $1 $2
fi

if [ $1 = "MiuiSystemUI" ];then
    applyPatch $1 $2
fi

if [ $1 = "TelephonyProvider" ];then
    applyPatch $1 $2
fi

if [ $1 = "TeleService" ];then
    applyPatch $1 $2
fi

if [ $1 = "SecurityCoreAdd" ];then
    applyPatch $1 $2
fi

if [ $1 = "XiaomiServiceFramework" ];then
    applyPatch $1 $2
fi

if [ $1 = "SecurityCenter" ];then
    applyPatch $1 $2
    isPatchrom $2
fi

if [ $1 = "Settings" ];then
    sed -i 's/screen_buttons_timeout/button_backlight_timeout/g' `grep -lnr 'screen_buttons_timeout' $2/smali`
    changeID $2 XXHDPI
fi

if [ $1 = "miuisystem" ];then
    applyPatch $1 $2
fi

if [ $1 = "ThemeManager" ];then
    applyPatch $1 $2
fi
