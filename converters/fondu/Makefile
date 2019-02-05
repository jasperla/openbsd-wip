# $OpenBSD$

COMMENT =	convert Mac font formats to/from pfb, ttf, otf and bdf files

DISTNAME =	fondu_src-060102
PKGNAME =	${DISTNAME:S/_src//}
EXTRACT_SUFX =	.tgz

CATEGORIES =	converters

HOMEPAGE =	http://fondu.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MASTER_SITES =	http://fondu.sourceforge.net/

WRKDIST =	${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE = Gnu

CONFIGURE_ARGS = --bindir=${PREFIX}/bin

NO_TEST =	Yes

post-install:
.for f in dfont2res fondu frombin lumper showfond tobin ufond
	${INSTALL_MAN} ${WRKSRC}/${f}.1 ${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
