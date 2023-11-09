COMMENT =	Wrapper around su for running a command as another user

GH_ACCOUNT =	outpaddling
GH_PROJECT =	runas
GH_COMMIT =	a43e634f486ac9985aca2f37c513d2dc2ce275c3

DISTNAME =	runas-0.1.0.12

CATEGORIES =	sysutils

PERMIT_PACKAGE =	Yes

# OpenBSD PREFIX includes DESTDIR
post-patch:
	sed -i -e 's|$${DESTDIR}||g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
