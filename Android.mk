#Enables the listed display HAL modules
#libs to be built for QCOM targets only

ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),caf-new)

display-hals := libgenlock libcopybit libgralloc-compat libexternal libvirtual
display-hals += libhwcomposer liboverlay libqdutils libqservice libmemalloc
display-hals += libtilerenderer libmemtrack

ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
display-hals += liblight
endif

include $(call all-named-subdir-makefiles,$(display-hals))

endif
