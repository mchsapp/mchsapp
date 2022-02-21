MCHS_PKG_HOMEPAGE=http://taglib.github.io/
MCHS_PKG_DESCRIPTION="A Library for reading and editing the meta-data of several popular audio formats."
MCHS_PKG_LICENSE="LGPL-2.0, MPL-2.0"
MCHS_PKG_MAINTAINER="@mchs"
MCHS_PKG_VERSION=1.12
MCHS_PKG_SRCURL=http://taglib.github.io/releases/taglib-$MCHS_PKG_VERSION.tar.gz
MCHS_PKG_SHA256=7fccd07669a523b07a15bd24c8da1bbb92206cb19e9366c3692af3d79253b703
MCHS_PKG_DEPENDS="zlib"
MCHS_PKG_BUILD_DEPENDS="boost"
MCHS_PKG_BREAKS="taglib-dev"
MCHS_PKG_REPLACES="taglib-dev"
MCHS_PKG_INCLUDE_IN_DEVPACKAGE="bin/taglib-config"

MCHS_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_SHARED_LIBS=ON
-DWITH_MP4=ON
-DWITH_ASF=ON"