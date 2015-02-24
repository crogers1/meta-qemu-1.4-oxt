DESCRIPTION = "Alsatramp Dom0 Daemon"
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=e0f13b605150ae82c5fe01f36e4c0bb2"

PR = "r0"

SRC_URI = " \
    file://audiotramp.c \
    file://Makefile \
    file://LICENSE \
    "

S = "${WORKDIR}"

FILES_${PN} += "/usr/bin"
FILES_${PN}-dbg += "/usr/bin/.debug"

do_configure() {
    echo " " > /dev/null    
}

do_compile() {
    oe_runmake all
}

do_install() {
    prefix=${D}/usr oe_runmake install
}
