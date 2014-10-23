# $OpenBSD: Makefile,v 1.15 2013/03/11 11:41:32 espie Exp $

COMMENT=		forensic toolkit based on TCT

DISTNAME=		sleuthkit-4.1.3
CATEGORIES=		sysutils security

SHARED_LIBS=		tsk	0.0	# 12.0

HOMEPAGE=		http://www.sleuthkit.org/

MAINTAINER=		Nigel Taylor <nigel@openbsd.org>

# CPLv1 & IBM & GPLv2
PERMIT_PACKAGE_CDROM=	commercial contributor must indemnify all others
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sleuthkit/}

WANTLIB=		c m stdc++ pthread z

CONFIGURE_STYLE=        simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--disable-java \
			--without-afflib \
			--without-libewf
USE_GROFF =		Yes

RUN_DEPENDS=		converters/p5-DateManip

NO_TEST=		Yes

pre-configure:
	@perl -pi -e "s:%%PREFIX%%:${PREFIX}:" ${WRKSRC}/man/sorter.1

.include <bsd.port.mk>
