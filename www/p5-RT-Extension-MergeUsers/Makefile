# $OpenBSD$

COMMENT= 	Merges two RT users into the same effective user

MODULES=	cpan

DISTNAME=	RT-Extension-MergeUsers-0.04
CATEGORIES=	www perl5

MAINTAINER=	Andrew Fresh <andrew@cpan.org>

# GPL2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS=		PREFIX=${DESTDIR}${PREFIX} --skipdeps
NO_REGRESS=		Yes

RUN_DEPENDS=	www/rt \
		devel/p5-Hook-LexWrap

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/rt3
	mv -f ${PREFIX}/html ${PREFIX}/share/rt3/
	cp -r ${DESTDIR}${PREFIX}/* ${PREFIX}
	rm -r ${DESTDIR}/usr/ports

.include <bsd.port.mk>
