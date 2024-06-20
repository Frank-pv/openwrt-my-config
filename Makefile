include $(TOPDIR)/rules.mk

PKG_NAME:=my-config
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/my-config
  TITLE:=my config 
  DEPENDS:=+odhcpd-ipv6only +odhcp6c +htop +luci-proto-wireguard +luci-proto-ipv6 +luci-proto-ppp \
  +luci +lsblk +lscpu +lsof +openssl-util +open-vm-tools +pciutils +bind-dig +ip6tables-nft +iptables-nft \
  +iperf3 +tcpdump +kmod-fs-exfat +kmod-fs-vfat +kmod-fs-ext4 +kmod-fs-ntfs3 +kmod-fs-xfs +kmod-fs-f2fs \
  +kmod-crypto-sha1 +kmod-crypto-sha256 +kmod-crypto-sha512 +kmod-usb-storage +kmod-usb-storage-extras +!TARGET_ramips:kmod-usb-storage-uas \
  +block-mount +e2fsprogs +@LUCI_LANG_zh_Hans +luci-i18n-base-zh-cn \
  +luci-app-firewall +luci-app-opkg +luci-app-smartdns
  PKG_MAINTAINER:=Summer
  PKGARCH:=all
endef

define Package/my-config/description
  This package automatically configures extension settings for OpenWrt.
endef

define Build/Compile
endef

$(eval $(call BuildPackage,my-config))
