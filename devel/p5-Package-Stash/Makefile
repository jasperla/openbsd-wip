# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:34 ajacoutot Exp $

COMMENT=		routines for manipulating stashes

MODULES=		cpan
DISTNAME=		Package-Stash-0.33
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS =		devel/p5-Dist-CheckConflicts \
			devel/p5-Package-DeprecationManager

REGRESS_DEPENDS =	devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
