# $OpenBSD$

V =		0.19.0
COMMENT =	free multi-platform file manager inspired by Far Manager
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	walcommander-${V}
CATEGORIES =	x11

GH_ACCOUNT =	corporateshark
GH_PROJECT =	WalCommander
GH_TAGNAME =	release-${V}
GH_COMMIT =	000e93b0aad4a05a9b06b8ffa0536c26699dd642

HOMEPAGE =	https://github.com/corporateshark/WalCommander
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c freetype pthread lib/samba/smbclient ssh2

MODULES =	gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

LIB_DEPENDS =	net/samba,-main \
		security/libssh2

RUN_DEPENDS =	devel/desktop-file-utils

USE_GMAKE =	Yes
MAKE_FILE =	makefile

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,-O3,${CFLAGS},g" ${WRKSRC}/src/makefile.linux

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wcm ${PREFIX}/bin
	cd ${WRKSRC}/install-files && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/{}" \;
	cd ${WRKSRC}/install-files && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/{}" \;

.include <bsd.port.mk>
