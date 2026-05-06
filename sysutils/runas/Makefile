COMMENT =	Wrapper around su for running a command as another user

GH_ACCOUNT =	outpaddling
GH_PROJECT =	runas
GH_COMMIT =	e7238a62361356e8857d37fecc748d031c0ade79

DISTNAME =	runas-0.2.0.1

CATEGORIES =	sysutils

PERMIT_PACKAGE =	Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
