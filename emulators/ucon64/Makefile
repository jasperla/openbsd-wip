# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	emulator Swiss Army knife program

DISTNAME =	ucon64-2.0.3-src
PKGNAME =	${DISTNAME:S/-src//}

CATEGORIES =	emulators

HOMEPAGE =	http://ucon64.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ucon64/}

WRKSRC =	${WRKDIST}/src

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-discmage --disable-dload --disable-parallel

USE_GMAKE =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ucon64 ${PREFIX}/bin

.include <bsd.port.mk>
