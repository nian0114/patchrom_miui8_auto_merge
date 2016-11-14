#
# Makefile for HTC One
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_m7.zip

# the location for local-ota to save target-file
local-previous-target-dir :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-jars := org.cyanogenmod.platform

# All apks from MIUI
local-miui-removed-apps := FM

local-miui-modified-apps := TelephonyProvider TeleService SecurityCoreAdd XiaomiServiceFramework MiuiSystemUI MiuiKeyguard SecurityCenter

PORT_PRODUCT := nian_m7

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XXHDPI

# All apps need to be removed from original ZIP file
#local-remove-apps   :=

include phoneapps.mk


local-target-bit := 32

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
#updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
#pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	# to fix settings mod
	$(PORT_ROOT)/tools/apktool d -r -f $(PORT_ROOT)/miui/system/priv-app/XXHDPI/Settings/Settings.apk -o $(TARGET_OUT_DIR)/Settings
	sed -i 's/screen_buttons_timeout/button_backlight_timeout/g' `grep -lnr 'screen_buttons_timeout' $(TARGET_OUT_DIR)/Settings/smali`
	$(PORT_ROOT)/tools/apktool b $(TARGET_OUT_DIR)/Settings
	cp -rf $(TARGET_OUT_DIR)/Settings/dist/Settings.apk $(ZIP_DIR)/system/priv-app/Settings/Settings.apk
	# to fix settings mod
	cp -rf other/system $(ZIP_DIR)/
	cp -rf ../other/system $(ZIP_DIR)/
#	cp -rf ../xposed_32/system $(ZIP_DIR)/
	echo "import /system/default.prop" >> $(ZIP_DIR)/system/build.prop
	@echo goodbye! miui prebuilt binaries!
	rm -rf $(ZIP_DIR)/system/bin/app_process32_vendor
	cp -rf stockrom/system/bin/app_process32 $(ZIP_DIR)/system/bin/app_process32
