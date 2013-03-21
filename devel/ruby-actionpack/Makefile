# $OpenBSD: Makefile,v 1.32 2012/09/23 16:57:33 jeremy Exp $

COMMENT =	eases web-request routing, handling, and response

VERSION =	3.2.12
DISTNAME =	actionpack-${VERSION}
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-activemodel,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.6,<1.0 \
		devel/ruby-journey,${MODRUBY_FLAVOR}>=1.0.4,<1.1 \
		devel/ruby-sprockets,${MODRUBY_FLAVOR}>=2.2.1,<2.3 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.4.5,<1.5 \
		www/ruby-rack-cache,${MODRUBY_FLAVOR}>=1.2,<2.0 \
		www/ruby-rack-mount,${MODRUBY_FLAVOR}>=0.8.2,<0.9 \
		www/ruby-rack-test,${MODRUBY_FLAVOR}>=0.6.1,<0.7 \
		textproc/ruby-builder,${MODRUBY_FLAVOR}>=3.0.0,<3.1 \
		textproc/ruby-erubis,${MODRUBY_FLAVOR}>=2.7.0,<2.8

CONFIGURE_STYLE =	ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}>=0.9.7 \
			databases/ruby-activerecord,${MODRUBY_FLAVOR}
MODRUBY_TEST =	rake

.include <bsd.port.mk>
