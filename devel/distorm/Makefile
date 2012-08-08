# $OpenBSD$

# XXX this is just the python binding
# I need to MULTIPACKAGE or SUBDIR this to make one package
# for each binding

# XXX there is a bug in the DecomposeInterface preventing me from submitting
# this: http://code.google.com/p/distorm/issues/detail?id=51

COMMENT =		lightweight disassembler library for x86/AMD64

MODPY_EGG_VERSION =	3
DISTNAME =		distorm3-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
EXTRACT_SUFX =		.zip

HOMEPAGE =		http://ragestorm.net/distorm/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2 - or commercial license if consumer is not GPLv2 XXX
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://distorm.googlecode.com/files/
MODULES =		lang/python
NO_REGRESS =		Yes

EXAMPLEDIR =	${PREFIX}/share/examples/distorm
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	mv ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/distorm3/sample.py \
		${EXAMPLEDIR}
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/distorm3/sample.py{c,o}

.include <bsd.port.mk>
