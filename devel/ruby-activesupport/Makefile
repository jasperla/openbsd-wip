# $OpenBSD: Makefile,v 1.29 2012/10/15 15:06:42 sthen Exp $

COMMENT =	utility classes and extensions for rails framework

DISTNAME =	activesupport-3.2.13
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS = converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.0,<2.0 \
		devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.6,<1
RUN_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
		devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.6,<1 \
		converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.0,<2.0

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
