# $OpenBSD$

COMMENT =		libraries for OpenVAS security scanner
DISTNAME =		openvas-libraries-5.0.4

SHARED_LIBS =		openvas_base    0.17 \
			openvas_hg	0.17 \
                        openvas_misc    0.17 \
                        openvas_nasl    0.17 \
                        openvas_omp     0.17

WANTLIB +=		assuan c e2fs-uuid gcrypt glib-2.0 gnutls gpg-error
WANTLIB +=		gpgme ldap m pcap pthread

LIB_DEPENDS +=		security/libgcrypt \
			devel/glib2 \
			databases/openldap,-main \
			security/gnutls \
                        security/gpgme \
                        security/libassuan \
			sysutils/e2fsprogs \
			security/libgpg-error

BUILD_DEPENDS +=	devel/bison

MASTER_SITES =		${MASTER_SITES_OPENVAS:=1208/}

#CONFIGURE_STYLE =	gnu
#CONFIGURE_ARGS +=	--localstatedir="/var" \
#			--includedir="/usr/local/include" \
#			LDFLAGS="-L /usr/local/lib" \
#			 --sharedstatedir="/var" \
#			 --enable-bpf-sharing \
#			 --enable-shared

CFLAGS = 		-I /usr/local/include

SEPARATE_BUILD =	No

#  remove patch files left in source tarball
pre-patch:
	@find ${WRKSRC} \( -name "*.orig" -or -name "*.rej" \) -exec rm {} \;

.include <bsd.port.mk>
