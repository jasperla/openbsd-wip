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
		net/p5-Protocol-WebSocket \
		security/p5-Digest-SHA1

BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>
