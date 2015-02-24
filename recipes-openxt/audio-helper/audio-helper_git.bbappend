FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \          
          file://audio_helper_start \
          "

INC_PR="r500"
PR = "${INC_PR}.0"
