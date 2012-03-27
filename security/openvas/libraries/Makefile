# $OpenBSD$

COMMENT =		libraries for OpenVAS security scanner
DISTNAME =		openvas-libraries-5.0.0

SHARED_LIBS =		openvas_base    0.14 \
			openvas_hg	0.14 \
                        openvas_misc    0.14 \
                        openvas_nasl    0.14 \
                        openvas_omp     0.14

WANTLIB +=		assuan c e2fs-uuid gcrypt glib-2.0 gnutls gpg-error
WANTLIB +=		gpgme ldap m pcap pthread

LIB_DEPENDS +=		security/libgcrypt \
			devel/glib2 \
			databases/openldap,-main \
			security/gnutls \
                        security/gpgme \
			sysutils/e2fsprogs \
			security/libgpg-error

BUILD_DEPENDS +=	devel/bison

MASTER_SITES =		${MASTER_SITES_OPENVAS:=1051/}

#CONFIGURE_STYLE =	gnu
#CONFIGURE_ARGS +=	--localstatedir="/var" \
#			--includedir="/usr/local/include" \
#			LDFLAGS="-L /usr/local/lib" \
#			 --sharedstatedir="/var" \
#			 --enable-bpf-sharing \
#			 --enable-shared

CFLAGS = 		-I /usr/local/include

SEPARATE_BUILD =	No

.include <bsd.port.mk>
