# $OpenBSD$

PKG_ARCH=	*

COMMENT=	framework for server orchestration/parallel job execution

DISTNAME=	mcollective-1.3.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.puppetlabs.com/mcollective
MASTER_SITES=	http://downloads.puppetlabs.com/mcollective/
EXTRACT_SUFX=	.tgz

# GFDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

MODULES=	lang/ruby

# makefile is in ext/
MAKE_FILE=ext/Makefile

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/server.cfg.dist

# Prevent patch/subst_cmd leftovers from ending up in PLIST
pre-install:
	rm ${WRKSRC}/etc/server.cfg.dist.*

.include <bsd.port.mk>
