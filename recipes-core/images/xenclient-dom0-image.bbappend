PRINC := "${@int(PRINC) + 500}"

IMAGE_INSTALL += " qemu-dm audiotramp "

PACKAGE_REMOVE += " ioemu "
