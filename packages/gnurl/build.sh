MCHS_PKG_HOMEPAGE=https://gnunet.org/en/gnurl.html
MCHS_PKG_DESCRIPTION="Fork of libcurl, which is mostly for GNUnet"
MCHS_PKG_LICENSE="MIT"
MCHS_PKG_MAINTAINER="@mchs"
MCHS_PKG_VERSION=7.72.0
MCHS_PKG_SRCURL=https://ftp.gnu.org/gnu/gnunet/gnurl-$MCHS_PKG_VERSION.tar.Z
MCHS_PKG_SHA256=45b4e3cc1f052b2d56d076c276f65358e6f643b217d72b9a35e7a945f8601668
MCHS_PKG_DEPENDS="libgnutls, libnghttp2"

MCHS_PKG_EXTRA_CONFIGURE_ARGS="
--disable-dict \
--disable-file \
--disable-ftp \
--disable-gopher \
--disable-imap \
--disable-ldap \
--disable-ldaps \
--disable-ntlm-wb \
--disable-pop3 \
--disable-rtsp \
--disable-smb \
--disable-smtp \
--disable-telnet \
--disable-tftp \
--enable-ipv6 \
--enable-manual \
--enable-versioned-symbols \
--enable-threaded-resolver \
--without-gssapi \
--with-gnutls \
--without-libidn \
--without-libpsl \
--without-librtmp \
--without-ssl \
--disable-ftp \
--disable-file \
--with-random=/dev/urandom \
--with-ca-bundle=$MCHS_PREFIX/etc/tls/cert.pem
--with-ca-path=$MCHS_PREFIX/etc/tls/certs
"