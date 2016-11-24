# $OpenBSD$

COMMENT-main =	brute force cracker for key passphrases
COMMENT-gpg =	phrasendrescher plugin for GPG keys

DISTNAME =	phrasendrescher-1.2.2b
CATEGORIES =	security

PKGNAME-main =	${DISTNAME}
PKGNAME-gpg =	${DISTNAME:C/-/-gpg-/}

HOMEPAGE =	http://leidecker.info/projects/phrasendrescher/

# BSDL 3-clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		c crypto ssh2 ssl z
WANTLIB-gpg =		assuan gpg-error gpgme iconv intl

MASTER_SITES =		http://leidecker.info/projects/phrasendrescher/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu autoconf automake no-autoheader
CONFIGURE_ARGS =	--with-plugins
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
AUTOCONF_VERSION =	2.68
AUTOMAKE_VERSION =	1.10

MULTI_PACKAGES =	-main -gpg
LIB_DEPENDS-main =	security/libssh2
LIB_DEPENDS-gpg =	security/gpgme

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

post-install:
	rm ${PREFIX}/lib/phrasendrescher/*.la
	rm ${PREFIX}/lib/phrasendrescher/*.a

.include <bsd.port.mk>
