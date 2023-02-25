# : Makefile,v 1.2 2005/12/01 22:37:28 steven Exp $

COMMENT=		Read Outlook .msg files

MODULES=		cpan
VER=			0.921
DISTNAME=		Email-Outlook-Message-${VER}
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		mail perl5
CPAN_AUTHOR=		MVZ

MAINTAINER=		Todd T. Fries <todd@fries.net>

# Artistic
PERMIT_PACKAGE=	Yes
PERMIT_DISTFILES=   Yes

RUN_DEPENDS+= ${BUILD_DEPENDS}
BUILD_DEPENDS+= devel/p5-IO-String \
		devel/p5-OLE-Storage_Lite \
		mail/p5-Email-Sender

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
