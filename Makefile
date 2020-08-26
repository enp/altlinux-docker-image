CONFIGDIR = /usr/share/mkimage

include $(CONFIGDIR)/config.mk

IMAGE_INIT_LIST = +altlinux-release-$(GLOBAL_RELEASE)

MKI_PACK_RESULTS = tar:altlinux.tar

include $(CONFIGDIR)/targets.mk

all: build-image pack-image
