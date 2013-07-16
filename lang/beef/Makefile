# $OpenBSD$

COMMENT =		flexible Brainfuck interpreter

V =			1.0.0
DISTNAME =		beef-$V
DISTFILES =		beef-${V}${EXTRACT_SUFX}{source}
PKGNAME =		beef-$V

CATEGORIES =		lang

HOMEPAGE =		http://kiyuko.org/software/beef

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cattle-1.0 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pcre pthread readline termcap z

MASTER_SITES =		http://kiyuko.org/software/beef/releases/$V/

MODULES =		devel/gettext
LIB_DEPENDS =		lang/cattle

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LIBS="-ltermcap"

NO_TEST =		Yes

.include <bsd.port.mk>
