# $OpenBSD$

COMMENT =		libraries for OpenVAS security scanner
DISTNAME =		openvas-libraries-7.0.6

SHARED_LIBS =		openvas_base    0.17 \
                        openvas_misc    0.17 \
                        openvas_nasl    0.17 \
                        openvas_omp     0.17 #

WANTLIB +=		assuan c gcrypt gio-2.0 glib-2.0 gnutls gobject-2.0
WANTLIB +=		gpg-error gpgme ksba lber ldap m pcap pthread ssh z

LIB_DEPENDS +=		security/libgcrypt \
			devel/glib2 \
			databases/openldap,-main \
			security/gnutls \
                        security/gpgme \
			security/libksba \
                        security/libassuan \
			security/libgpg-error \
			security/libssh

BUILD_DEPENDS +=	devel/bison

MASTER_SITES =		${MASTER_SITES_OPENVAS:=1833/}

CFLAGS = 		-I ${PREFIX}/include

CONFIGURE_ARGS +=	-D LIBCUUID=1

SEPARATE_BUILD =	No

#  remove patch files left in source tarball
pre-patch:
	@find ${WRKSRC} \( -name "*.orig" -or -name "*.rej" \) -exec rm {} \;

.include <bsd.port.mk>
