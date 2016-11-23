#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
GIT_APPLY=$PORT_ROOT/tools/git.apply
BUILD_OUT=out

function appendSmaliPart() {
  	cd overlay
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="../out/$filepath/$filename"
        cat $file >> $dstfile
    done
	  cd ..
}

function overlaySmali() {
    for file in `find $1/smali -name *.smali`
    do
        filepath=`dirname $file`
        cp -f $file out/$filepath
    done
}

function applyPatch() {
	for file in $1/*.patch
	do
		cp $file out/
		cd out
		git.apply `basename $file`
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
		cd ..
	done
}


if [ $2 = "$BUILD_OUT/framework" ]
then
    rm -rf $2/smali/android/widget/Editor*
    cp -rf $1/smali/android/widget/Editor*.smali $2/smali/android/widget/
    rm -rf $2/smali/android/app/AppOpsManager*
    cp -rf $1/smali/android/app/AppOpsManager*.smali $2/smali/android/app/
    applyPatch "overlay/framework"
    appendSmaliPart "framework"
fi

if [ $2 = "$BUILD_OUT/services" ]
then
    applyPatch "overlay/services"
    rm -rf $2/smali/com/android/server/power/ShutdownThread*.smali
    cp -rf $1/smali/com/android/server/power/ShutdownThread*.smali $2/smali/com/android/server/power/
fi

if [ $2 = "$BUILD_OUT/telephony-common" ]
then
    appendSmaliPart "telephony-common"
    applyPatch "overlay/telephony-common"
fi
