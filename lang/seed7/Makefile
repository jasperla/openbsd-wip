# $OpenBSD$

# Big endian problem?
NOT_FOR_ARCHS =	powerpc

COMMENT =	high-level, extensible programming language
DISTNAME =	seed7_05_20130805
PKGNAME =	seed7-20130805
EXTRACT_SUFX =	.tgz
CATEGORIES =	lang

HOMEPAGE =	http://seed7.sourceforge.net/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Interpreter and example programs: GPLv2+
# Runtime libraries: LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c m ncurses

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=seed7/}

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}"
MAKE_ENV +=	S7_LIB_DIR=${LOCALBASE}/lib/seed7/bin \
		SEED7_LIBRARY=${LOCALBASE}/lib/seed7/lib
MAKE_FILE =	makefile
ALL_TARGET =	depend s7 s7c

WRKDIST =	${WRKDIR}/seed7
WRKSRC =	${WRKDIST}/src

post-patch:
	perl -pi -e "s,-O2,${CFLAGS},g" ${WRKSRC}/makefile
	${SUBST_CMD} ${WRKSRC}/makefile

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/bin/s7{,c} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/seed7/bin
	${INSTALL_DATA} ${WRKDIST}/bin/*.a ${PREFIX}/lib/seed7/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/seed7/lib
	${INSTALL_DATA} ${WRKDIST}/lib/*.s7i ${PREFIX}/lib/seed7/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/seed7
	${INSTALL_DATA} ${WRKDIST}/prg/*.{dna,sd7,dat,s7i} ${PREFIX}/share/examples/seed7
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/seed7
	${INSTALL_DATA} ${WRKDIST}/{COPYING,LGPL} ${PREFIX}/share/doc/seed7
	${INSTALL_DATA} ${WRKDIST}/doc/*.{txt,htm,css,rc,syn,uew} ${PREFIX}/share/doc/seed7
	${INSTALL_MAN} ${WRKDIST}/doc/*.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && gmake test

.include <bsd.port.mk>
