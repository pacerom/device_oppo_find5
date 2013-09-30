ifeq ($(filter find5,$(TARGET_DEVICE)),find5)
include $(call all-makefiles-under,$(call my-dir))
endif
