# $OpenBSD$
COMMENT =		a tiny command-line utility to process DMARC reports

DISTNAME =		dmarc-0.20140201
CATEGORIES =		mail

GH_ACCOUNT =		riobard
GH_PROJECT =		dmarc
GH_COMMIT =		b8aa5b75ddd8a4b065f992ebe5d0cafa41268059

MAINTAINER =		Josh Grosse <josh@jggimi.homeip.net>

PERMIT_PACKAGE_CDROM = no license
PERMIT_PACKAGE_FTP =   no license
PERMIT_DISTFILES_FTP = no license


MODULES =		lang/go
do-build:
	cd ${WRKSRC} && ${MODGO_CMD} build ${MODGO_FLAGS} main.go
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/main ${PREFIX}/bin/dmarc
.include <bsd.port.mk>
