LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))


include $(CLEAR_VARS)
LOCAL_MODULE := fastcv_headers
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/vidc/venc/inc
include $(BUILD_HEADER_LIBRARY)
