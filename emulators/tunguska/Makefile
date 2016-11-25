# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	ternary computer emulator

DISTNAME =	tunguska-0.5

CATEGORIES =	emulators

HOMEPAGE =	http://tunguska.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL c m pthread stdc++ z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tunguska/}

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
