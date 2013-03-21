# $OpenBSD$

COMMENT =	requests router

VERSION =	1.0.4
DISTNAME =	journey-${VERSION}
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR} \
		devel/ruby-minitest,${MODRUBY_FLAVOR}>=3.2

CONFIGURE_STYLE =	ruby gem
MODRUBY_TEST =	rake

.include <bsd.port.mk>
