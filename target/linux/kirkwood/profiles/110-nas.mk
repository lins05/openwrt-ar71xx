#
# Copyright (C) 2013 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/IB62X0
  NAME:=RaidSonic ICY BOX IB-NAS62x0
  PACKAGES:= \
	kmod-ata-core kmod-ata-marvell-sata \
	kmod-rtc-marvell kmod-usb2 kmod-usb-storage \
	uboot-envtools
endef

define Profile/IB62X0/Description
 Package set compatible with RaidSonic ICY BOX IB-NAS62x0 board.
endef

IB62X0_UBIFS_OPTS:="-m 2048 -e 126KiB -c 4096 -U"
IB62X0_UBI_OPTS:="-m 2048 -p 128KiB -s 512"

$(eval $(call Profile,IB62X0))
