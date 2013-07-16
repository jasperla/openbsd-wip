# $OpenBSD: Makefile.template,v 1.66 2013/06/04 22:58:11 sthen Exp $

COMMENT =		real-time web log analyzer and interactive viewer

DISTNAME =		goaccess-0.6

CATEGORIES =		www

HOMEPAGE =		http://goaccess.prosoftcorp.com/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		GeoIP c glib-2.0 m ncurses pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=goaccess/}

LIB_DEPENDS =		devel/glib2 \
			net/GeoIP

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-geoip
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
