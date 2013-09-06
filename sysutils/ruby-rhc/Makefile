# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:56 espie Exp $

COMMENT =	OpenShift client tools

DISTNAME =	rhc-1.13.6
CATEGORIES =	sysutils net

# apache
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	archivers/ruby-archive-tar-minitar \
		devel/ruby-commander \
		www/ruby-httpclient \
		net/ruby-net-ssh \
		devel/ruby-open4

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
