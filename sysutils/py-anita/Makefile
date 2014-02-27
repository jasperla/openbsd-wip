# $OpenBSD$

COMMENT =		automated NetBSD installation and test application

DISTNAME =		anita-1.29

CATEGORIES =		devel sysutils
HOMEPAGE =		http://www.gson.org/netbsd/anita/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.gson.org/netbsd/anita/download/

MODULES =		lang/python
RUN_DEPENDS =     	devel/py-pexpect \
			emulators/qemu \
			sysutils/cdrtools

WANTLIB +=              ${MODPY_WANTLIB}

MODPY_ADJ_FILES =	./setup.py install

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/anita
	cd ${WRKSRC}; ${INSTALL_DATA} CHANGES COPYRIGHT PKG-INFO \
	    ${PREFIX}/share/doc/anita/

.include <bsd.port.mk>
