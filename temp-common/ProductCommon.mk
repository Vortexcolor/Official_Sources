# full temp product config
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/softwinner/common/sw-common.mk)

DEVICE_PACKAGE_OVERLAYS := device/softwinner/temp-common/overlay

PRODUCT_PACKAGES += \
	hwcomposer.exDroid \
	camera.exDroid \
	lights.sun5i \
	display.sun5i

PRODUCT_PACKAGES += \
	audio.primary.exDroid \
	audio.a2dp.default \
	libaudioutils \
	libcedarxbase \
	libcedarxosal \
	libcedarxsftdemux \
	libcedarv \
	libaw_audio \
	libswa1 \
	libswdrm \
	libstagefright_soft_cedar_h264dec \
	Camera \
	libjni_mosaic \
	FileExplore \
	u3gmonitor \
	chat \
	libjni_pinyinime

PRODUCT_PACKAGES += \
	e2fsck \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p \
	make_ext4fs

PRODUCT_PACKAGES += \
	LiveWallpapersPicker \
	LiveWallpapers \
	android.software.live_wallpaper.xml


# init.rc, kernel
PRODUCT_COPY_FILES += \
	device/softwinner/temp-common/init.rc:root/init.rc

# keylayout
PRODUCT_COPY_FILES += \
	device/softwinner/temp-common/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl

# gps conf
PRODUCT_COPY_FILES += \
	device/softwinner/temp-common/gps.conf:system/etc/gps.conf

# wifi conf
PRODUCT_COPY_FILES += \
	device/softwinner/temp-common/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# mali lib so
PRODUCT_COPY_FILES += \
	device/softwinner/temp-common/egl/gralloc.sun5i.so:system/lib/hw/gralloc.sun5i.so \
	device/softwinner/temp-common/egl/libMali.so:system/lib/libMali.so \
	device/softwinner/temp-common/egl/libUMP.so:system/lib/libUMP.so \
	device/softwinner/temp-common/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/softwinner/temp-common/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
	device/softwinner/temp-common/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
	device/softwinner/temp-common/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
	device/softwinner/temp-common/egl/libppbox-armandroid-r4-gcc44-mt-1.0.0.so:system/lib/libppbox-armandroid-r4-gcc44-mt-1.0.0.so \
	device/softwinner/temp-common/egl/libpplivep2p-jni.so:system/lib/libpplivep2p-jni.so 

# preinstall script
PRODUCT_COPY_FILES += \
	device/softwinner/temp-common/preinstall.sh:/system/bin/preinstall.sh \
        device/softwinner/temp-common/data_resume.sh:/system/bin/data_resume.sh

#premission feature
PRODUCT_COPY_FILES += \
	device/softwinner/temp-common/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

#google service
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,$(LOCAL_PATH)/googleservice,system/app)

PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapsize=48m \
	ro.kernel.android.checkjni=0 \
	persist.sys.timezone=Europe/London \
	persist.sys.language=es \
	persist.sys.country=ES \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	debug.egl.hw=1 \
	ro.opengles.version=131072 \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	hwui.render_dirty_regions=false

# Overrides
PRODUCT_BRAND  := softwinners
PRODUCT_NAME   := temp_common
PRODUCT_DEVICE := temp-common


