# $OpenBSD: Makefile,v 1.4 2008/09/08 00:07:40 jasper Exp $

COMMENT=		Latex driver

DISTNAME=		LaTeX-Driver-0.08
CATEGORIES=		textproc

MODULES=		cpan

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV+= PREFIX=${PREFIX}

RUN_DEPENDS=	print/texlive/base \
                devel/p5-Class-Accessor \
                devel/p5-Exception-Class \
		devel/p5-File-Slurp

.include <bsd.port.mk>
