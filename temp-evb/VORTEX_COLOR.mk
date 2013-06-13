# mt-7000  product config

$(call inherit-product, device/softwinner/temp-common/ProductCommon.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/temp-evb/overlay

PRODUCT_COPY_FILES += \
	device/softwinner/temp-evb/kernel:kernel \
	device/softwinner/temp-evb/recovery.fstab:recovery.fstab

PRODUCT_COPY_FILES += \
	device/softwinner/temp-evb/ueventd.sun5i.rc:root/ueventd.sun5i.rc \
	device/softwinner/temp-evb/init.sun5i.rc:root/init.sun5i.rc \
	device/softwinner/temp-evb/init.sun5i.usb.rc:root/init.sun5i.usb.rc \
	device/softwinner/temp-evb/media_profiles.xml:system/etc/media_profiles.xml \
	device/softwinner/temp-evb/camera.cfg:system/etc/camera.cfg


#xie add com.google.android.maps.jar
PRODUCT_COPY_FILES += \
	device/softwinner/temp-evb/com.google.android.maps.jar:system/framework/com.google.android.maps.jar

#xie add com.google.android.maps.xml
PRODUCT_COPY_FILES += \
	device/softwinner/temp-evb/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml

#input device config
PRODUCT_COPY_FILES += \
	device/softwinner/temp-evb/sw-keyboard.kl:system/usr/keylayout/sw-keyboard.kl \
        device/softwinner/temp-evb/aw5306_ts.idc:system/usr/idc/aw5306_ts.idc \
	device/softwinner/temp-evb/ft5x_ts.idc:system/usr/idc/ft5x_ts.idc
      

PRODUCT_COPY_FILES += \
	device/softwinner/temp-evb/initlogo.rle:root/initlogo.rle

#rtp_touch_calibration
#PRODUCT_PACKAGES += \
	#TSCalibration2

# pre-installed apks
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*.apk,$(LOCAL_PATH)/apk,system/preinstall)
	
# pre-installed start apks
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*.apk,$(LOCAL_PATH)/apk_start,system/app)	
	
# pre-installed start apks
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*.so,$(LOCAL_PATH)/lib,system/lib)		

PRODUCT_COPY_FILES += \
	device/softwinner/temp-evb/vold.fstab:system/etc/vold.fstab
	
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mass_storage,adb \
	ro.sf.lcd_density=120 \
	ro.property.tabletUI=true \
	ro.udisk.lable=NUCLEAR \
	ro.product.firmware=V2.0_20120922

$(call inherit-product-if-exists, device/softwinner/temp-evb/modules/modules.mk)

PRODUCT_CHARACTERISTICS := tablet

# Overrides
PRODUCT_BRAND  := softwinners
PRODUCT_NAME   := temp_evb
PRODUCT_DEVICE := temp-evb
PRODUCT_MODEL  := VORTEX COLOR

