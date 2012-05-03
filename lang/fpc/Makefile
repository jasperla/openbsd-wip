# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		Free Pascal compiler

V =			2.7.1
DISTNAME =		fpc-${V}.20120503

CATEGORIES =		lang

HOMEPAGE =		http://www.freepascal.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# compiler: GPLv2+, packages/rtl: modified LGPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

# XXX
#MASTER_SITES =		???
DIST_SUBDIR =		fpc
DISTFILES =		${DISTNAME}.zip
EXTRACT_ONLY =		${DISTNAME}.zip
SUPDISTFILES =		ppcx64 ppc386

.if ${MACHINE_ARCH} == "amd64"
COMPNAME +=		ppcx64
CONFIG =		x86_64-openbsd
PKG_ARGS +=		-Damd64=1
PKG_ARGS +=		-Di386=0
.else
COMPNAME +=		ppc386
CONFIG =		i386-openbsd
PKG_ARGS +=		-Di386=1
PKG_ARGS +=		-Damd64=0
.endif

DISTFILES +=		${COMPNAME}

SUBST_VARS +=		V CONFIG

MAKE_FLAGS =		PP=${COMPNAME} NOGDB=1
MAKE_ENV =		MKDIRPROG=/bin/mkdir ECHO=/bin/echo \
			GINSTALL=/usr/bin/install DATE=/bin/date \
			TARPROG=/bin/tar
FAKE_FLAGS =		INSTALLEXE="${INSTALL_PROGRAM}" \
			MKDIR="${INSTALL_DATA_DIR}" \
			INSTALL="${INSTALL_DATA}"
REGRESS_FLAGS =		TEST_FPC=${WRKSRC}/fpcsrc/compiler/${COMPNAME} \
			FPC=${WRKSRC}/fpcsrc/compiler/${COMPNAME} \
			FPCMAKE=${WRKSRC}/fpcsrc/utils/fpcm/fpcmake

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/fpcbuild

pre-build:
	cp ${FULLDISTDIR}/${COMPNAME} ${WRKDIR}/bin

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
	cd ${WRKSRC}/fpcsrc/tests && env -i ${MAKE_ENV} ${MAKE_PROGRAM} \
		${ALL_REGRESS_FLAGS}

.include <bsd.port.mk>
