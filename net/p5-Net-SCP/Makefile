# $OpenBSD $

COMMENT=	Perl extension for secure copy protocol

MODULES=	cpan
DISTNAME=	Net-SCP-0.08
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	net

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-SSH \
		textproc/p5-String-ShellQuote	

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
