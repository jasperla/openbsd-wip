# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		Free Pascal compiler

V =			2.6.2rc1
DISTNAME =		fpcbuild-${V}
PKGNAME =		fpc-${V}

CATEGORIES =		lang

HOMEPAGE =		http://www.freepascal.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# compiler: GPLv2+, packages/rtl: modified LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		ftp://ftp.freepascal.org/pub/fpc/beta/2.6.2-rc1/source/
MASTER_SITES0 =		ftp://ftp.freepascal.org/pub/fpc/beta/2.6.2-rc1/x86_64-openbsd/
MASTER_SITES1 =		ftp://ftp.freepascal.org/pub/fpc/beta/2.6.2-rc1/i386-openbsd/
DIST_SUBDIR =		fpc
BOOTSTRAP64 =		fpc-${V}.x86_64-openbsd${EXTRACT_SUFX}:0
BOOTSTRAP32 =		fpc-${V}.i386-openbsd${EXTRACT_SUFX}:1
SUPDISTFILES =		${BOOTSTRAP32} ${BOOTSTRAP64}	
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
	

.if ${MACHINE_ARCH} == "amd64"
COMPNAME =		ppcx64
CONFIG =		x86_64-openbsd
PKG_ARGS +=		-Damd64=1
PKG_ARGS +=		-Di386=0
DISTFILES +=		${BOOTSTRAP64}
.else
COMPNAME =		ppc386
CONFIG =		i386-openbsd
PKG_ARGS +=		-Di386=1
PKG_ARGS +=		-Damd64=0
DISTFILES +=		${BOOTSTRAP32}
.endif

SUBST_VARS +=		V CONFIG

REGRESS_DEPENDS =	${BUILD_PKGPATH}

MAKE_FLAGS =		NOGDB=1
MAKE_ENV =		MKDIRPROG=/bin/mkdir ECHO=/bin/echo \
			GINSTALL=/usr/bin/install DATE=/bin/date \
			TARPROG=/bin/tar COMPILER_OPTIONS='-k-nopie -Xe' \
			FPCMAKEOPT='-k-nopie -Xe'
FAKE_FLAGS =		INSTALLEXE="${INSTALL_PROGRAM}" \
			MKDIR="${INSTALL_DATA_DIR}" \
			INSTALL="${INSTALL_DATA}"
REGRESS_FLAGS =		TEST_FPC=${WRKSRC}/fpcsrc/compiler/${COMPNAME} \
			FPC=${WRKSRC}/fpcsrc/compiler/${COMPNAME} \
			FPCMAKE=${WRKSRC}/fpcsrc/utils/fpcm/fpcmake

USE_GMAKE =		Yes

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/fpc/lexyacc
	chmod ${DIRMODE} ${PREFIX}/lib/fpc/lexyacc/
	chmod ${SHAREMODE} ${PREFIX}/lib/fpc/lexyacc/*
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/fpc-${V}/fpc
	chmod ${DIRMODE} ${PREFIX}/share/doc/fpc-${V}/fpc/
	chmod ${SHAREMODE} ${PREFIX}/share/doc/fpc-${V}/fpc/*
	cd ${PREFIX}/bin && ln -s ../lib/fpc/${V}/${COMPNAME} .
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fpc
	${INSTALL_DATA} ${FILESDIR}/fpc.cfg.sample ${PREFIX}/share/examples/fpc
	${SUBST_CMD} ${PREFIX}/share/examples/fpc/fpc.cfg.sample

do-regress:
	find ${WRKSRC} -name Package.fpc | xargs ${SUDO} rm -f
	cd ${WRKSRC}/fpcsrc/tests && env -i ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS}

.include <bsd.port.mk>
