# $OpenBSD$

COMMENT =	free font editor for TTF, EOT, and SVG fonts
DISTNAME =	birdfont-0.19
CATEGORIES =	print graphics
SUBST_VARS +=	DESTDIR

SHARED_LIBS +=	birdfont			0.0 # 0.0

HOMEPAGE =	http://birdfont.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 

MASTER_SITES =	http://birdfont.org/releases/

MODULES =	devel/gettext \
		lang/python

BUILD_DEPENDS =	lang/vala

CONFIGURE_STYLE =	simple

USE_SYSTRACE =	Yes

post-patch:
	perl -pi -e "s,/usr/bin/python,${MODPY_BIN},g" ${WRKSRC}/configure ${WRKSRC}/install
	${SUBST_CMD} ${WRKSRC}/configure

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doit

do-install:
	cd ${WRKSRC} && ./install

#do-install:
#	${INSTALL_PROGRAM} ${WRKSRC}/build/bin/birdfont{,-export} ${PREFIX}/bin
#	${INSTALL_DATA_DIR} ${PREFIX}/share/locale
#	cd ${WRKSRC}/build/locale && find * -type d -exec ${INSTALL_DATA_DIR} \
#		"${PREFIX}/share/locale/{}" \;
#	cd ${WRKSRC}/build/locale && find * -type f -exec ${INSTALL_DATA} \
#		"{}" "${PREFIX}/share/locale/{}" \;

.include <bsd.port.mk>
