# $OpenBSD$

COMMENT =		toolkit for the Brainfuck programming language

V =			1.0.1
DISTNAME =		cattle-$V
DISTFILES =		cattle-${V}${EXTRACT_SUFX}{source}
PKGNAME =		cattle-$V

SHARED_LIBS +=  cattle-1.0                0.0 # 0.1

CATEGORIES =		lang

HOMEPAGE =		http://kiyuko.org/software/cattle/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 pcre pthread

MASTER_SITES =		http://kiyuko.org/software/cattle/releases/$V/

MODULES =		devel/gettext
LIB_DEPENDS =		devel/glib2

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
