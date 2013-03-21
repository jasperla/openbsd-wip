# $OpenBSD: Makefile,v 1.15 2012/09/23 16:57:34 jeremy Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.12.3
CATEGORIES =	devel

HOMEPAGE =	http://mocha.rubyforge.org/

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS} \
		devel/ruby-metaclass,${MODRUBY_FLAVOR}>=0.0.1,<0.2

CONFIGURE_STYLE = ruby gem

# requires more stuff
NO_TEST =	Yes

.include <bsd.port.mk>
