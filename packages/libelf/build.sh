MCHS_PKG_HOMEPAGE=https://sourceware.org/elfutils/
MCHS_PKG_DESCRIPTION="ELF object file access library"
MCHS_PKG_LICENSE="GPL-2.0"
MCHS_PKG_MAINTAINER="@mchs"
MCHS_PKG_VERSION=0.185
MCHS_PKG_REVISION=1
MCHS_PKG_SRCURL="https://sourceware.org/elfutils/ftp/${MCHS_PKG_VERSION}/elfutils-${MCHS_PKG_VERSION}.tar.bz2"
MCHS_PKG_SHA256=dc8d3e74ab209465e7f568e1b3bb9a5a142f8656e2b57d10049a73da2ae6b5a6
# libandroid-support for langinfo.
MCHS_PKG_DEPENDS="libandroid-support, zlib, libcurl"
MCHS_PKG_BUILD_DEPENDS="argp, zstd, liblzma, libmicrohttpd, libsqlite, libarchive, libbz2"
MCHS_PKG_EXTRA_CONFIGURE_ARGS="ac_cv_c99=yes --disable-symbol-versioning"
MCHS_PKG_CONFLICTS="libelf-dev"
MCHS_PKG_REPLACES="libelf-dev"
MCHS_PKG_BUILD_IN_SRC=true

mchs_step_pre_configure() {
	CXXFLAGS+=" -Wno-unused-const-variable"
	CFLAGS+=" -Wno-error=unused-value -Wno-error=format-nonliteral -Wno-error"

	# Exposes ACCESSPERMS in <sys/stat.h> which elfutils uses
	CFLAGS+=" -D__USE_BSD"

	CFLAGS+=" -DFNM_EXTMATCH=0"

	if [ "$MCHS_ARCH" = "arm" ]; then
		CFLAGS="${CFLAGS/-Oz/-O1}"
	fi

	cp $MCHS_PKG_BUILDER_DIR/stdio_ext.h .
	cp $MCHS_PKG_BUILDER_DIR/obstack.h .
	cp $MCHS_PKG_BUILDER_DIR/qsort_r.h .
	cp $MCHS_PKG_BUILDER_DIR/aligned_alloc.c libelf
	cp -r $MCHS_PKG_BUILDER_DIR/search src/

	autoreconf -ivf
}