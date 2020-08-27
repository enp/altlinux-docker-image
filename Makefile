CONFIGDIR = /usr/share/mkimage

include $(CONFIGDIR)/config.mk

IMAGE_INIT_LIST = +altlinux-release-$(GLOBAL_RELEASE)
IMAGE_PACKAGES = packages

MKI_PACK_RESULTS = tar:altlinux.tar

include $(CONFIGDIR)/targets.mk

all: build-image run-image-scripts pack-image
