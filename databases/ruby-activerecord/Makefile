# $OpenBSD: Makefile,v 1.37 2012/09/23 16:57:32 jeremy Exp $

COMMENT =	object relation model implementation for ruby

VERSION =	3.2.13
DISTNAME =	activerecord-${VERSION}
CATEGORIES =	databases

# MIT License
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-activemodel,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-tzinfo,${MODRUBY_FLAVOR}>=0.3.29,<0.4 \
		databases/ruby-arel,${MODRUBY_FLAVOR}>=3.0.2
RUN_DEPENDS :=	${BUILD_DEPENDS}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
