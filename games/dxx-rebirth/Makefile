# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	source port for Descent, a 6-degrees-of-freedom shooter

DISTNAME =	dxx-rebirth_v0.60-weekly-11-08-17-src
PKGNAME =	dxx-rebirth-0.60

CATEGORIES =	games

HOMEPAGE =	http://www.dxx-rebirth.com

MAINTAINER =		Thomas Frohwein (frohwein <at> ymail <dott> com)

# GPLv3 and Parallax license
PERMIT_PACKAGE_CDROM =	Selling explicitly prohibited
PERMIT_PACKAGE_FTP =	Yes

WANTLIB+=		GL GLU SDL SDL_mixer c m physfs pthread

MASTER_SITES =		http://www.dxx-rebirth.com/download/dxx/user/afuturepilot/

COMPILER =		ports-gcc
MODULES =		devel/scons
LIB_DEPENDS =		devel/sdl \
			devel/sdl-mixer \
			devel/physfs

SEPARATE_BUILD =	simple
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

#IS_INTERACTIVE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/dxx-rebirth_v0.60-weekly-src

MODSCONS_FLAGS=         ignore_unknown_variables=1 d1x=1

.include <bsd.port.mk>
