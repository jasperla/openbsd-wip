# $OpenBSD$

COMMENT= 	merges two RT users into the same effective user

MODULES=	cpan

DISTNAME=	RT-Extension-MergeUsers-1.01
CATEGORIES=	www perl5

MAINTAINER=	Andrew Fresh <afresh1@openbsd.org>

# GPL2
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS =	PREFIX=${DESTDIR}${PREFIX} --skipdeps
NO_TEST =		Yes

RUN_DEPENDS=	www/rt \
		devel/p5-Hook-LexWrap

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/rt3
	cp -r ${WRKSRC}/html ${PREFIX}/share/rt3/
	${INSTALL_SCRIPT} ${WRKSRC}/bin/rt-*-users ${PREFIX}/bin/

.include <bsd.port.mk>
