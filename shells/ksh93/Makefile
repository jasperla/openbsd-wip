# $OpenBSD$

COMMENT =		AT&T Korn Shell

V =			2012-08-01
DISTNAME =		ast-ksh.${V}
PKGNAME =		ksh93-${V:S/-//g}

CATEGORIES =		shells

HOMEPAGE =		http://www.kornshell.com/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# EPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m util

#MASTER_SITES =		http://www2.research.att.com/~gsf/download/tgz/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} INIT.${V}${EXTRACT_SUFX}
EXTRACT_SUFX =		.tgz
DIST_SUBDIR =		ksh93

MAKE_ENV =		CC="${CC}" CCFLAGS="${CFLAGS}" SHELL=/bin/sh \
			TMPDIR="${WRKDIR}"

USE_GROFF =		Yes

WRKDIST =		${WRKDIR}

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} /bin/sh bin/package make

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/bin/ksh \
		${PREFIX}/bin/ksh93
	cd ${PREFIX}/bin && ln ksh93 rksh93
	${INSTALL_DATA} \
	${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/lib/lib{ast,cmd,shell}.a \
		${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ksh93		
	${INSTALL_DATA} ${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/fun/* \
		${PREFIX}/share/examples/ksh93
	${INSTALL_MAN} ${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/man/man1/sh.1 \
		${PREFIX}/man/man1/ksh93.1
	cd ${PREFIX}/man/man1 && ln ksh93.1 rksh93.1
	${INSTALL_MAN} ${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/man/man3/shell.3 \
		${PREFIX}/man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/include/ast
	${INSTALL_DATA} \
		${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/include/ast/ast* \
		${PREFIX}/include/ast
	${INSTALL_DATA} \
		${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/include/ast/sfio{,_s}.h \
		${PREFIX}/include/ast
	${INSTALL_DATA} \
	${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/include/ast/prototyped.h \
		${PREFIX}/include/ast
	
do-regress:
	cd ${WRKSRC}/src/cmd/ksh93/tests && env -i \
		SHELL=${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/bin/ksh \
		TMPDIR=${WRKDIR} \
		${WRKSRC}/arch/openbsd.${MACHINE_ARCH}/bin/ksh shtests

.include <bsd.port.mk>
