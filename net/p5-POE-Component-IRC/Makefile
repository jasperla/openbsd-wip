# $OpenBSD: Makefile,v 1.37 2016/03/20 19:56:57 naddy Exp $

COMMENT=	event-driven IRC-client module

DISTNAME=	POE-Component-IRC-6.90
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes

RUN_DEPENDS=	devel/p5-Object-Pluggable \
		devel/p5-POE>=1.311 \
		devel/p5-POE-Component-Syndicator \
		net/p5-IRC-Utils \
		net/p5-POE-Component-Client-DNS>=0.99 \
		net/p5-POE-Filter-IRCD>=2.42

# Not listed in PREREQ_PM, but needed for SSL connections.
RUN_DEPENDS+=	security/p5-POE-Component-SSLify

TEST_DEPENDS=	devel/p5-Test-Differences

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-POE-Component-IRC
	${INSTALL_DATA} ${WRKSRC}/docs/* \
		${PREFIX}/share/doc/p5-POE-Component-IRC
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
