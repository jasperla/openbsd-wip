# $OpenBSD$

V =		0.2.0
COMMENT =	Fortran Package Manager (fpm)
PKGNAME =	fpm-${V}
DISTFILES =	${PKGNAME}.f90
CATEGORIES =	lang

HOMEPAGE =	https://fpm.fortran-lang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MASTER_SITES =	https://github.com/fortran-lang/fpm/releases/download/v${V}/

MODULES =	fortran

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}

# Their "bootstrap" fpm is the result of concatenating all the source files
# into one file. It is the full fpm. Let's use it. Makes packaging easy.
do-extract:
	mkdir ${WRKDIST}
	cp ${DISTDIR}/${DISTFILES} ${WRKDIST}

do-build:
	cd ${WRKSRC} && ${SETENV} \
		${WRKDIR}/bin/${MODFORTRAN_COMPILER} ${FFLAGS} -o fpm \
			${DISTFILES}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fpm ${PREFIX}/bin

.include <bsd.port.mk>
