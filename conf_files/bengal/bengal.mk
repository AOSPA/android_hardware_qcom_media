CONFIG_PATH := hardware/qcom/media/conf_files/bengal
#Bring all FEATURE FLAG (Compilation) here

PRODUCT_COPY_FILES += \
    $(CONFIG_PATH)/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(CONFIG_PATH)/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(CONFIG_PATH)/media_codecs_performance_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_v1.xml \
    $(CONFIG_PATH)/media_codecs_performance_scuba_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_v2.xml \
    $(CONFIG_PATH)/media_codecs_performance_khaje.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_v3.xml \
    $(CONFIG_PATH)/media_codecs_performance_khaje_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_v4.xml \
    $(CONFIG_PATH)/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_vendor.xml \
    $(CONFIG_PATH)/media_profiles_scuba.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_scuba.xml \
    $(CONFIG_PATH)/media_profiles_khaje.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_khaje.xml \
    $(CONFIG_PATH)/media_profiles_khaje_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_khaje_v0.xml \
    $(CONFIG_PATH)/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(CONFIG_PATH)/system_properties.xml:$(TARGET_COPY_OUT_VENDOR)/etc/system_properties.xml \
    device/qcom/common/vendor/media/media_profiles.xml:$(TARGET_COPY_OUT_ODM)/etc/media_profiles_V1_0.xml

ifneq ($(strip $(TARGET_BOARD_SUFFIX)),)
	PRODUCT_COPY_FILES += \
		$(CONFIG_PATH)/media_codecs_vendor_32.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
		$(CONFIG_PATH)/media_codecs_vendor_v1_32.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v1.xml \
		$(CONFIG_PATH)/media_codecs_vendor_scuba_v0_32.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v2.xml
else
	PRODUCT_COPY_FILES += \
		$(CONFIG_PATH)/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
		$(CONFIG_PATH)/media_codecs_vendor_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v1.xml \
		$(CONFIG_PATH)/media_codecs_vendor_scuba_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v2.xml \
		$(CONFIG_PATH)/media_codecs_vendor_khaje.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v3.xml \
		$(CONFIG_PATH)/media_codecs_vendor_khaje_v0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_v4.xml
endif
