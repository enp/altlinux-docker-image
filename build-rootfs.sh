#!/bin/bash -x

BRANCH=${BRANCH:-Sisyphus}
ARCH=${ARCH:-x86_64}

APTCONFDIR=$(mktemp -d)

cat << EOF > $APTCONFDIR/apt.conf
Dir::Etc::SourceParts "/var/empty";
Dir::Etc::SourceList "$APTCONFDIR/sources.list";
EOF

cat << EOF > $APTCONFDIR/sources.list
rpm http://ftp.altlinux.org/pub/distributions/ALTLinux $BRANCH/$ARCH classic
rpm http://ftp.altlinux.org/pub/distributions/ALTLinux $BRANCH/noarch classic
EOF

make \
    GLOBAL_HSH_APT_CONFIG=$APTCONFDIR/apt.conf \
    GLOBAL_RELEASE=$(echo $BRANCH | tr '[:upper:]' '[:lower:]' | cut -f1 -d'/') \
    GLOBAL_TARGET=$ARCH

mv .work/.out/altlinux.tar .

make clean

rm -rf .work
rm -rf $APTCONFDIR
