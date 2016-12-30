#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pineapple-nano
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/pineapple-nano
	SECTION:=net
	CATEGORY:=Network
	DEPENDS:=+wireless-tools
	TITLE:=Rogue 802.11 AP
	MAINTAINER:=chrono <chrono@open-resource.org>
	SUBMENU:=wireless
endef

define Package/pineapple-nano/description
	pineapple reads and logs messages to the system console, log
	files, other machines and/or users as specified by its
	configuration file.
endef

define Package/pineapple-nano/conffiles
	/etc/pineapple/pineap_log_location
	/etc/pineapple/spoofhost
endef

define Build/Prepare
	$(call sleep 1)
endef

define Build/Configure
	$(call sleep 1)
endef

define Build/Compile
	$(call sleep 1)
endef

define Package/pineapple-nano/install
	$(INSTALL_DIR) $(1)/bin/
	$(INSTALL_BIN) ./files/bin/* $(1)/bin/
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) ./files/usr/bin/at $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/bin/pineapple/
	$(INSTALL_BIN) ./files/usr/bin/pineapple/* $(1)/usr/bin/pineapple/
	$(INSTALL_DIR) $(1)/usr/sbin/
	$(INSTALL_BIN) ./files/usr/sbin/* $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/usr/lib/
	$(INSTALL_DATA) ./files/usr/lib/* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/lib/netifd/wireless/
	$(INSTALL_BIN) ./files/lib/netifd/wireless/mac80211.sh $(1)/lib/netifd/wireless/
	$(INSTALL_DIR) $(1)/lib/wifi/
	$(INSTALL_BIN) ./files/lib/wifi/* $(1)/lib/wifi/
	$(INSTALL_DIR) $(1)/etc/config/
	$(INSTALL_CONF) ./files/etc/config/* $(1)/etc/config/
	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/etc/init.d/* $(1)/etc/init.d/
	$(INSTALL_DIR) $(1)/etc/pineapple/
	$(INSTALL_CONF) ./files/etc/pineapple/pineap_log_location $(1)/etc/pineapple/
	$(INSTALL_DATA) ./files/etc/pineapple/pineapple.db $(1)/etc/pineapple/
	$(INSTALL_DATA) ./files/etc/pineapple/pineapple_version $(1)/etc/pineapple/
	$(INSTALL_CONF) ./files/etc/pineapple/spoofhost $(1)/etc/pineapple/
	$(INSTALL_DATA) ./files/etc/pineapple/ssid_file $(1)/etc/pineapple/
	$(INSTALL_DATA) ./files/etc/pineapple/tracking_list $(1)/etc/pineapple/
	$(INSTALL_BIN) ./files/etc/pineapple/tracking_script $(1)/etc/pineapple/
	$(INSTALL_BIN) ./files/etc/pineapple/tracking_script_user $(1)/etc/pineapple/
endef

$(eval $(call BuildPackage,pineapple-nano))
