# $OpenBSD$

COMMENT=	WebSockets with IO::Async

DISTNAME=	Net-Async-WebSocket-0.07
CATEGORIES=	net

MAINTAINER=	Todd T. Fries <todd@OpenBSD.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
CONFIGURE_STYLE=modbuild

CONFIGURE_ARGS=--skipdeps

RUN_DEPENDS=	devel/p5-IO-Async \
		security/p5-Digest-SHA1

.include <bsd.port.mk>
