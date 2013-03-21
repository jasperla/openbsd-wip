# $OpenBSD: Makefile,v 1.5 2012/09/23 16:57:33 jeremy Exp $

COMMENT =	toolkit for building modeling frameworks

VERSION =	3.2.13
DISTNAME =	activemodel-${VERSION}
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.6,<1.0 \
		textproc/ruby-builder,${MODRUBY_FLAVOR}>=3.0.0,<3.1

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
