FILESEXTRAPATHS := "${THISDIR}/files:"

SRC_URI += " \
  file://0001-Fix-headers-in-Makefiles.patch \
  file://0002-Add-qemu-dm-wrapper-script.patch \
  file://0003-qemu-cdrom-and-atapi-pt-emulation-comnands.patch \
  file://0004-qemu-ioemu-Add-XenMou-device.patch \
  file://0005-qemu-Add-battery-command.patch \
  file://0006-qemu-Add-xen-pci-passthrough-command.patch \
  file://0007-qemu-1.4-Add-graphic-options.patch \
  file://0008-Honor-the-configured-boot-order.patch \
  file://0010-qemu-device-use-net-tap-instead-of-net-bridge.patch \
  file://0011-qemu1.4_dm-agent_use_svirt-interpose.patch;patch=1 \
  file://0012-updated-xenstore-path.patch;patch=1 \
"

INC_PR="r500"
PR = "${INC_PR}.10"

