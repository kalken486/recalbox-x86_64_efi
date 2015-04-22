################################################################################
#
# iMX USB loader
#
################################################################################

IMX_USB_LOADER_VERSION = f96aee286ea17c832b7ec922dd76842deb5ce299
IMX_USB_LOADER_SITE = $(call github,boundarydevices,imx_usb_loader,$(IMX_USB_LOADER_VERSION))
IMX_USB_LOADER_LICENSE = LGPLv2.1
IMX_USB_LOADER_LICENSE_FILES = COPYING
IMX_USB_LOADER_DEPENDENCIES = libusb

define HOST_IMX_USB_LOADER_BUILD_CMDS
	$(MAKE) -C $(@D)
endef

define HOST_IMX_USB_LOADER_INSTALL_CMDS
	$(MAKE) -C $(@D)	\
		DESTDIR=$(HOST_DIR) install
endef

$(eval $(host-generic-package))
