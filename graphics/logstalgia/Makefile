# $OpenBSD$

COMMENT =		visualise webserver logs in a game of pong

DISTNAME =		logstalgia-1.0.3

CATEGORIES =		graphics

HOMEPAGE =		http://code.google.com/p/logstalgia/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB  = GL GLU SDL SDL_image c ftgl jpeg m pcre png pthread
WANTLIB += stdc++

MASTER_SITES =		http://logstalgia.googlecode.com/files/

LIB_DEPENDS =		graphics/ftgl \
			devel/sdl-image \
			devel/pcre

USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

.include <bsd.port.mk>
