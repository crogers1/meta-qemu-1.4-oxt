FILESEXTRAMETA := "${THISDIR}/${PN}"
FILESEXTRAPATHS_prepend := "${FILESEXTRAMETA}:"

PR .= ".1"

SRC_URI += "file://qemu1.4_call_the_new_wrapper.patch;patch=1"
