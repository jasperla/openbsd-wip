#   $OpenBSD$
#   $RedRiver: Makefile,v 1.2 2010/11/03 17:30:19 andrew Exp $

COMMENT=	Perl extension for detecting mailing list messages

DISTNAME=	Mail-ListDetector-1.04
CATEGORIES=	mail

MAINTAINER=	Andrew Fresh <andrew@afresh1.com

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	mail/p5-Email-Abstract \
                mail/p5-Email-Valid \
		mail/p5-Mail-Tools \
		www/p5-URI

.include <bsd.port.mk>
