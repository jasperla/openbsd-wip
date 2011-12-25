# $OpenBSD$

COMMENT =		graphical manager of GPS data

DISTNAME =		gpsman-6.4.2

CATEGORIES =	geo x11

HOMEPAGE =		http://gpsman.sourceforge.net

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=project/gpsman/distrib/}
EXTRACT_SUFX =		.tgz

MODULES =		lang/tcl \
				x11/tk
RUN_DEPENDS = 		${MODTK_RUN_DEPENDS}

USE_X11 =		Yes

NO_BUILD =		Yes

post-patch:
	@perl -pi -e 's|exec wish|exec ${MODTK_BIN}|g' \
		${WRKSRC}/gpsman.tcl ${WRKSRC}/util/*.tcl
	@perl -pi -e 's|exec tclsh|exec ${MODTCL_BIN}|g' \
		${WRKSRC}/util/*.tcl
	@perl -pi -e 's|gmsrc|${PREFIX}/share/gpsman/gmsrc|g' ${WRKSRC}/gpsman.tcl
do-install:
.for i in gpsman gpsman/gmsrc gpsman/gmsrc/gmicons gpsman/gmsrc/util
	${INSTALL_DATA_DIR} ${PREFIX}/share/$i
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/gpsman.tcl ${PREFIX}/share/gpsman
	ln -s ${PREFIX}/share/gpsman/gpsman.tcl ${PREFIX}/bin/gpsman
	${INSTALL_DATA} ${WRKSRC}/gmsrc/*.tcl ${PREFIX}/share/gpsman/gmsrc
	${INSTALL_DATA} ${WRKSRC}/gmsrc/gmicons/* ${PREFIX}/share/gpsman/gmsrc/gmicons
	${INSTALL_DATA} ${WRKSRC}/util/*.tcl ${PREFIX}/share/gpsman/gmsrc/util
	${INSTALL_MAN} ${WRKSRC}/man/man1/gpsman.1 ${PREFIX}/man/man1/gpsman.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gpsman
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gpsman/html
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/gpsman
	${INSTALL_DATA} ${WRKSRC}/manual/*.pdf ${PREFIX}/share/doc/gpsman
	${INSTALL_DATA} ${WRKSRC}/manual/html/*.* ${PREFIX}/share/doc/gpsman/html
.include <bsd.port.mk>
