# $OpenBSD: Makefile,v 1.31 2012/09/23 16:57:34 jeremy Exp $

COMMENT=	easy email delivery and testing for ruby

VERSION=	3.2.12
DISTNAME=	actionmailer-${VERSION}
CATEGORIES=	mail

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	devel/ruby-actionpack,${MODRUBY_FLAVOR}=${VERSION} \
		mail/ruby-mail,${MODRUBY_FLAVOR}>=2.4.4,<2.5

CONFIGURE_STYLE=ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

MODRUBY_TEST =	rake

.include <bsd.port.mk>
