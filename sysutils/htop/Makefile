# $OpenBSD$

COMMENT =		an interactive process viewer for Unix

VERSION =		2.0.2
DISTNAME =		htop-${VERSION}pre20160610
GH_ACCOUNT =		hishamhm
GH_PROJECT =		htop
GH_COMMIT =		9ec41d1b650f2501d54fcb9429523751c8eaf285

CATEGORIES =		sysutils

HOMEPAGE =		http://hisham.hm/htop/

# GPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

#MASTER_SITES =		http://hisham.hm/htop/releases/${VERSION}/

WANTLIB +=		c m kvm ncurses

MODULES =		lang/python

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
RUN_DEPENDS =		devel/desktop-file-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-unicode \
			--disable-taskstats
ALL_TARGET =		debug

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	scripts/MakeHeader.py

# htop has some bugs which takes hours or days to reach.
# Keep the symbols to give a chance to the user to get an useful coredump.
INSTALL_STRIP=

post-patch:
	cd ${WRKBUILD} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
