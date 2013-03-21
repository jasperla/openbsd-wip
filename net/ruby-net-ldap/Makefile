# $OpenBSD$

COMMENT =	Ruby implementation of Net::LDAP

DISTNAME =	net-ldap-0.3.1
CATEGORIES =	net

# Ruby's license
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-hoe

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

.include <bsd.port.mk>
