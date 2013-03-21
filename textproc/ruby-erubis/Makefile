# $OpenBSD: Makefile,v 1.16 2012/09/23 16:57:35 jeremy Exp $

COMMENT=		pure Ruby implementation of eRuby

DISTNAME=		erubis-2.7.0
REVISION =		0
CATEGORIES=		textproc

HOMEPAGE=		http://www.kuwata-lab.com/erubis/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=	ruby
MODRUBY_TEST_ENV=	RUBYOPT=-rubygems
MODRUBY_TEST_TARGET=	test/test.rb

.include <bsd.port.mk>
