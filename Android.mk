LOCAL_PATH := $(call my-dir)

OFFICIAL_DEVICES := \
    sunfish

ifneq ($(filter $(TARGET_DEVICE),$(OFFICIAL_DEVICES)),)

ifneq ($(EVO_BUILD_TYPE),OFFICIAL)
$(error UNOFFICIAL build not allowed at this device. Please do export EVO_BUILD_TYPE=OFFICIAL)
endif

endif
