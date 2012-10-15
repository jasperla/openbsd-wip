# $OpenBSD: Makefile,v 1.36 2011/06/29 09:18:24 jasper Exp $

COMMENT=	library for WWW access in Perl

MODULES=	cpan
DISTNAME=	libwww-perl-6.04
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=LWP/}

RUN_DEPENDS=	devel/p5-File-Listing>=6.0 \
		textproc/p5-Encode-Locale \
		www/p5-URI>1.10 \
		www/p5-HTML-Parser>=3.33 \
		www/p5-HTML-Tagset \
		www/p5-HTTP-Cookies>=6.0 \
		www/p5-HTTP-Daemon>=6.0 \
		www/p5-HTTP-Date>=6.0 \
		www/p5-HTTP-Negotiate>=6.0 \
		www/p5-HTTP-GHTTP \
		www/p5-LWP-MediaTypes>=6.0 \
		net/p5-Net-HTTP>=6.0 \
		www/p5-URI>=1.10 \
		www/p5-WWW-RobotRules>=6.0

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
