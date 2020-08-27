Simple tool to create minimal docker image from any ALT Linux branch (including Sisyphus)

Usage example:

```
$ export BRANCH=sisyphus ARCH=x86_64
$ ./build-rootfs.sh # must be started on any ALT Linux with hasher/mkimage configured
$ ./build-image.sh  # must be started on any linux with docker configured
$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
altlinux            sisyphus            b81163986e09        5 minutes ago       84.9MB
$ docker run --rm altlinux:sisyphus rpm -qa | grep release
altlinux-release-sisyphus-20081222-alt1.noarch
```
