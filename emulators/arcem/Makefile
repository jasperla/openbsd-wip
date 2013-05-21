# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

# XXX Hack for big endian
# http://arcem.sourceforge.net/manual/arcem-1.50.html#compiling

COMMENT =		Acorn Archimedes Emulator

DISTNAME =		${PKGNAME}-src
PKGNAME =		arcem-1.50
EXTRACT_SUFX =		.zip
WRKDIST =		${WRKDIR}/arcem-src

CATEGORIES =		emulators

HOMEPAGE =		http://arcem.sourceforge.net/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

USE_GMAKE =		Yes

WANTLIB +=		X11 Xext c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=arcem/}

NO_TEST =		Yes

CFLAGS +=		-Dfopen64=fopen -Dfseeko64=fseek \
			-Dftello64=ftell -Doff64_t=uint64_t
FAKE_FLAGS +=		prefix=${WRKINST}${PREFIX}

post-install:
	${INSTALL_DATA_DIR} ${WRKSRC}/arcemrc ${PREFIX}/share/examples/arcem/
	${INSTALL_DATA} ${WRKSRC}/arcemrc ${PREFIX}/share/examples/arcem/

.include <bsd.port.mk>
