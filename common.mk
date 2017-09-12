#Common headers
common_includes := hardware/qcom/display-caf-new/libgralloc-compat
ifneq ($(TARGET_NO_COMPAT_GRALLOC_PERFORM),true)
    common_flags += -DCOMPAT_GRALLOC_PERFORM
endif
common_includes := hardware/qcom/display-caf-new/libgralloc-compat
common_includes += hardware/qcom/display-caf-new/libgenlock
common_includes += hardware/qcom/display-caf-new/liboverlay
common_includes += hardware/qcom/display-caf-new/libcopybit
common_includes += hardware/qcom/display-caf-new/libqdutils

ifeq ($(TARGET_USES_POST_PROCESSING),true)
    common_flags     += -DUSES_POST_PROCESSING
    common_includes += $(TARGET_OUT_HEADERS)/pp/inc
endif


#Common libraries external to display HAL
common_libs := liblog libutils libcutils libhardware

#Common C flags
common_flags := -DDEBUG_CALC_FPS -Wno-missing-field-initializers

ifeq ($(TARGET_USES_ION),true)
    common_flags += -DUSE_ION
endif

ifeq ($(ARCH_ARM_HAVE_NEON),true)
    common_flags += -D__ARM_HAVE_NEON
endif

ifeq ($(TARGET_NO_HW_VSYNC),true)
    common_flags += -DNO_HW_VSYNC
endif

