
# the above doesn't work?? use python
python do_patch_prepend() {
  import string
  xen_src_uri = bb.data.getVar('SRC_URI', d)
  bb.warn(xen_src_uri)
  xen_src_uri = string.replace(xen_src_uri, 'file://xc-xt-ioreq-multiple.patch;patch=1', '')
  bb.data.setVar('SRC_URI', xen_src_uri, d)
}

PR = "r500"
