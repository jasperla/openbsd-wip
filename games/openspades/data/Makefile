# $OpenBSD$

COMMENT =       Non free content of openspades client

DISTNAME =      OpenSpadesDevPackage-${DATA_V}
PKGNAME =       openspades-data-${V}

EXTRACT_SUFX =  .zip
PKG_ARCH =      *

PERMIT_PACKAGE_CDROM = No
PERMIT_PACKAGE_FTP   = No
PERMIT_DISTFILES_FTP = No

MASTER_SITES =  https://github.com/yvt/openspades-paks/releases/download/${DATA_V}/

BUILD_DEPENDS =   archivers/unzip \
		  games/openspades/base

NO_BUILD =      Yes
NO_TEST =       Yes
EXTRACT_ONLY =

do-extract:
	unzip -u -o ${FULLDISTDIR}/${DISTFILES} -d ${WRKDIR}/Resources

post-extract:
	mkdir -p ${WRKINST}/${LOCALBASE}/share/games/openspades/Resources

do-install:
	cp ${WRKDIR}/Resources/Nonfree/pak000-Nonfree.pak ${WRKINST}/${LOCALBASE}/share/games/openspades/Resources
	cp ${WRKDIR}/Resources/Nonfree/LICENSE.md ${WRKINST}/${LOCALBASE}/share/games/openspades/Resources/LICENSE.pak000.md
	cp ${WRKDIR}/Resources/OfficialMods/font-unifont.pak ${WRKINST}/${LOCALBASE}/share/games/openspades/Resources
	cp ${WRKDIR}/Resources/OfficialMods/LICENSE ${WRKINST}/${LOCALBASE}/share/games/openspades/Resources/LICENSE.unifont.txt


.include <bsd.port.mk>
