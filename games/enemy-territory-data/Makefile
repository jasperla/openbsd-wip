# $OpenBSD$

CATEGORIES=	games
COMMENT=	Wolfenstein: Enemy Territory
MASTER_SITES=	http://filebase.trackbase.net/et/full/

HOMEPAGE=	http://www.splashdamage.com/wolfet
MAINTAINER=     Jonathan Gray <jsg@openbsd.org>

V=		260b
N=		enemy-territory
DISTNAME=	et${V}.x86_full
PKGNAME=	${N}-data-${V}
EXTRACT_SUFX=	.zip
PKG_ARCH=	*

# EULA
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     No
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   No

FILES= campaigncycle.cfg description.txt hunkusage.dat lmscycle.cfg \
objectivecycle.cfg pak0.pk3 pak1.pk3 pak2.pk3 \
server.cfg stopwatchcycle.cfg

do-build:
	sh ${WRKDIR}/et260b.x86_keygen_V03.run --tar -xvf -C ${WRKSRC} .

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${N}
	cp -R ${WRKSRC}/Docs/* ${PREFIX}/share/doc/${N}/
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}/etmain/
.for F in ${FILES}
	${INSTALL_DATA} ${WRKSRC}/etmain/${F} ${PREFIX}/share/${N}/etmain/${F}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}/etmain/video
	${INSTALL_DATA} ${WRKSRC}/etmain/video/etintro.roq \
	    ${PREFIX}/share/${N}/etmain/video/etintro.roq

.include <bsd.port.mk>
