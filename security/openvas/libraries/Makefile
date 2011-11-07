# $OpenBSD$

COMMENT =		libraries for OpenVAS security scanner
DISTNAME =		openvas-libraries-4.0.6

SHARED_LIBS =		openvas_base    0.13 \
			openvas_hg	0.13 \
                        openvas_misc    0.13 \
                        openvas_nasl    0.13 \
                        openvas_omp     0.13

WANTLIB =		c gcrypt gpg-error m pcap pthread \
			glib-2.0 gnutls gpgme e2fs-uuid tasn1

LIB_DEPENDS +=		security/libgcrypt \
			devel/glib2 \
			security/gnutls \
                        security/gpgme \
			sysutils/e2fsprogs \
			security/libgpg-error

BUILD_DEPENDS +=	devel/bison

MASTER_SITES =		${MASTER_SITES_OPENVAS:=979/}

#CONFIGURE_STYLE =	gnu
#CONFIGURE_ARGS +=	--localstatedir="/var" \
#			--includedir="/usr/local/include" \
#			LDFLAGS="-L /usr/local/lib" \
#			 --sharedstatedir="/var" \
#			 --enable-bpf-sharing \
#			 --enable-shared

CFLAGS = 		-I /usr/local/include

.include <bsd.port.mk>
