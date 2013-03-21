# $OpenBSD: Makefile,v 1.2 2012/09/23 16:57:35 jeremy Exp $

COMMENT =	HTTP Caching for Rack

DISTNAME =	rack-cache-1.2
CATEGORIES =	www

HOMEPAGE =	http://rtomayko.github.com/rack-cache/

# MIT License
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}>=0.4

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
