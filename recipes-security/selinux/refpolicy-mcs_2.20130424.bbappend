FILESEXTRAMETA := "${THISDIR}/${PN}"
FILESEXTRAPATHS_prepend := "${FILESEXTRAMETA}:"

PR .= ".2"

SRC_URI += " \
    file://qemu1.4_wrapper_file_context.patch;patch=1 \
"
