# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT =	UEFI firmware for virtual machines

GH_ACCOUNT =	tianocore
GH_PROJECT =	edk2
GH_COMMIT =	eae7b476c2151141a43cc89d9629c47757f024f1

DISTNAME =	edk2-0.0.20181018

CATEGORIES =	sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =	ports-gcc

MODULES =	lang/python

BUILD_DEPENDS =	devel/acpica \
		devel/nasm \
		databases/py-sqlite

USE_GMAKE =	Yes

#NO_TEST =	Yes

post-extract:
	@ln -s ${LOCALBASE}/bin/gmake ${WRKDIR}/bin/make

do-build:
	cd ${WRKSRC}/OvmfPkg && ${SETENV} ${MAKE_ENV} ./build.sh

.include <bsd.port.mk>
