QCOM_MEDIA_ROOT := $(call my-dir)

ifeq ($(call is-board-platform-in-list, $(MSM_VIDC_TARGET_LIST)),true)
include $(QCOM_MEDIA_ROOT)/libarbitrarybytes/Android.mk
ifeq ($(ENABLE_HYP),true)
include $(QCOM_MEDIA_ROOT)/hypv-intercept/Android.mk
endif
endif
