# $OpenBSD: Makefile,v 1.19 2012/09/23 16:57:35 jeremy Exp $

COMMENT =	wraps web resources in model classes

VERSION =	3.2.12
DISTNAME =	activeresource-${VERSION}
CATEGORIES =	www

# MIT License
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-activemodel,${MODRUBY_FLAVOR}=${VERSION}

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake

.include <bsd.port.mk>
