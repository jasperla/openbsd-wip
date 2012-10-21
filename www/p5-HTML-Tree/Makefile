# $OpenBSD: Makefile,v 1.24 2010/12/03 11:46:52 ajacoutot Exp $

COMMENT=	perl parser that builds an HTML tree

MODULES=	cpan
DISTNAME=	HTML-Tree-5.03
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser>=3.46 \
		www/p5-HTML-Tagset>=3.02 \
		www/p5-HTML-Format \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Fatal

CONFIGURE_STYLE =	modbuild

REGRESS_DEPENDS=	devel/p5-Test-Pod \
			devel/p5-Test-LeakTrace \
			devel/p5-Try-Tiny

.include <bsd.port.mk>
