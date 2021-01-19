# Celestica DX010 and Haliburton Platform modules

CEL_DX010_PLATFORM_MODULE_VERSION = 0.9
CEL_HALIBURTON_PLATFORM_MODULE_VERSION = 0.9
CEL_SILVERSTONE_PLATFORM_MODULE_VERSION = 0.9
CEL_IVYSTONE_PLATFORM_MODULE_VERSION = 0.9
CEL_QUESTONE2F_PLATFORM_MODULE_VERSION = 0.9

export CEL_DX010_PLATFORM_MODULE_VERSION
export CEL_HALIBURTON_PLATFORM_MODULE_VERSION
export CEL_SILVERSTONE_PLATFORM_MODULE_VERSION
export CEL_IVYSTONE_PLATFORM_MODULE_VERSION
export CEL_QUESTONE2F_PLATFORM_MODULE_VERSION

CEL_DX010_PLATFORM_MODULE = platform-modules-dx010_$(CEL_DX010_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_DX010_PLATFORM_MODULE)_SRC_PATH = $(PLATFORM_PATH)/sonic-platform-modules-cel
$(CEL_DX010_PLATFORM_MODULE)_DEPENDS += $(LINUX_HEADERS) $(LINUX_HEADERS_COMMON)
$(CEL_DX010_PLATFORM_MODULE)_PLATFORM = x86_64-cel_seastone-r0
SONIC_DPKG_DEBS += $(CEL_DX010_PLATFORM_MODULE)

CEL_HALIBURTON_PLATFORM_MODULE = platform-modules-haliburton_$(CEL_HALIBURTON_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_HALIBURTON_PLATFORM_MODULE)_PLATFORM = x86_64-cel_e1031-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_HALIBURTON_PLATFORM_MODULE)))

CEL_SILVERSTONE_PLATFORM_MODULE = platform-modules-silverstone_$(CEL_SILVERSTONE_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_SILVERSTONE_PLATFORM_MODULE)_PLATFORM = x86_64-cel_silverstone-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_SILVERSTONE_PLATFORM_MODULE)))

CEL_IVYSTONE_PLATFORM_MODULE = platform-modules-ivystone_$(CEL_IVYSTONE_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_IVYSTONE_PLATFORM_MODULE)_PLATFORM = x86_64-cel_ivystone-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_IVYSTONE_PLATFORM_MODULE)))

CEL_QUESTONE2F_PLATFORM_MODULE = platform-modules-questone2f_$(CEL_QUESTONE2F_PLATFORM_MODULE_VERSION)_amd64.deb
$(CEL_QUESTONE2F_PLATFORM_MODULE)_PLATFORM = x86_64-cel_questone2f-r0
$(eval $(call add_extra_package,$(CEL_DX010_PLATFORM_MODULE),$(CEL_QUESTONE2F_PLATFORM_MODULE)))

SONIC_STRETCH_DEBS += $(CEL_DX010_PLATFORM_MODULE)
