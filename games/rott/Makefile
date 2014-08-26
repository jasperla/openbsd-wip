#	$OpenBSD$

COMMENT=	source port for Rise of the Triad
DISTNAME=	rott-1.1.2
CATEGORIES=	games x11

HOMEPAGE=	http://www.icculus.org/rott/
MASTER_SITES=	${HOMEPAGE}/releases/

WRKBUILD=	${WRKSRC}/rott

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=	devel/sdl \
		devel/sdl-mixer

WANTLIB=	SDL SDL_mixer c pthread

FLAVORS=	shareware registered
FLAVOR?=	shareware

.if ${FLAVOR:Mregistered}
MAKE_ENV+=	SHAREWARE=0
.endif

USE_GMAKE=	Yes
NO_TEST=	Yes

DOCS=		13todo.txt cheats.txt cmdline.txt hacker.txt readme.txt wad.txt
do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rott
.for DOC in ${DOCS}
		${INSTALL_DATA} ${WRKSRC}/doc/${DOC} ${PREFIX}/share/doc/rott
.endfor
		${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rott
		${INSTALL_MAN} ${WRKSRC}/doc/rott.6 ${PREFIX}/man/man6
		${INSTALL_PROGRAM} ${WRKBUILD}/rott ${PREFIX}/bin

.include <bsd.port.mk>
