#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
define Profile/GLINET
	NAME:=GL.iNet 6416
	PACKAGES:=kmod-usb-core kmod-usb2
endef

define Profile/GLINET/Description
	Package set optimized for the GL-Connect GL.iNet v1.
endef

$(eval $(call Profile,GLINET))

define Profile/GL-AR150
	NAME:=GL-AR150
	PACKAGES:=kmod-usb-core kmod-usb2
endef

define Profile/GL-AR150/Description
	Configuration of GL-AR150.
endef

$(eval $(call Profile,GL-AR150))

define Profile/GL-AR300
	NAME:=GL-AR300
	PACKAGES:=kmod-usb-core kmod-usb2
endef

define Profile/GL-AR300/Description
	Configuration of GL-AR300.
endef

$(eval $(call Profile,GL-AR300))

define Profile/DOMINO
	NAME:=GL Domino Pi
	PACKAGES:=kmod-usb-core kmod-usb2
endef

define Profile/DOMINO/Description
	Configuration of Domino, Wifi for everything.
endef

$(eval $(call Profile,DOMINO))

define Profile/GL-MIFI
	NAME:=GL-MIFI
	PACKAGES:=kmod-usb-core kmod-usb2
endef
define Profile/GL-MIFI/Description
	Configuration of GL-MIFI.
endef
$(eval $(call Profile,GL-MIFI))

define Profile/GL-AR300M
	NAME:=GL-AR300M
	PACKAGES:= kmod-usb-core kmod-usb2 mod-usb-storage kmod-ledtrig-usbdev kmod-ledtrig-gpio
endef

define Profile/GL-AR300M/description
	Package set optimized for the GL-AR300M.
endef
$(eval $(call Profile,GL-AR300M))
