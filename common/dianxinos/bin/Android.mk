#
# copy system sdk binary to default location & set uid/suid
#
LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := bp
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_SRC_FILES := bp
$(ALL_PREBUILT):$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := dxsrv
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_SRC_FILES := dxsrv
$(ALL_PREBUILT):$(LOCAL_MODULE)
include $(BUILD_PREBUILT)
