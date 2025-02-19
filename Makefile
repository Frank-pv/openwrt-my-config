include $(TOPDIR)/rules.mk

PKG_NAME:=my-config
PKG_VERSION:=1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/my-config
  TITLE:=my config 
  DEPENDS:=+odhcpd-ipv6only +odhcp6c +luci-proto-ipv6 +luci-proto-wireguard +luci-proto-ppp \
  +luci-ssl-openssl +luci-app-firewall +luci-mod-dashboard +@LUCI_LANG_zh_Hans +luci-i18n-base-zh-cn +luci \
  +lsblk +lscpu +lsof +htop  +qemu-ga +pciutils +bind-dig +ip6tables-nft +iptables-nft \
  +kmod-fs-exfat +kmod-fs-vfat +kmod-fs-ext4 +kmod-fs-ntfs3 +kmod-fs-f2fs +kmod-fs-nfs-v4 +kmod-fs-nfs-v3 \
  +kmod-crypto-sha1 +kmod-crypto-sha256 +kmod-crypto-sha512 +kmod-usb-storage +kmod-usb-storage-extras +!TARGET_ramips:kmod-usb-storage-uas \
  +block-mount +e2fsprogs +nfs-utils +cfdisk +parted +bash +lrzsz +iperf3 +tcpdump +fping +mtr-nojson +ethtool
  PKG_MAINTAINER:=Summer
  PKGARCH:=all
endef

define Package/my-config/description
  This package automatically configures extension settings for OpenWrt.
endef

define Build/Compile
endef

$(eval $(call BuildPackage,my-config))
