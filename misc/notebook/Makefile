# $OpenBSD  $

COMMENT =		wiki written in TCL/TK

V =             0.9
DISTNAME =		notebook${V}
PKGNAME = 		notebook-${V}

CATEGORIES =		misc x11
HOMEPAGE =			http://www.wjduquette.com/notebook/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES            = ${HOMEPAGE}

MODULES =               lang/tcl x11/tk 
RUN_DEPENDS =           ${MODTK_RUN_DEPENDS} devel/tcllib x11/bwidget

USE_X11=			Yes

NO_BUILD =			Yes
NO_TEST =			Yes

WRKSRC = ${WRKDIR}/notebook/
WRKDIST = ${WRKDIR}/notebook/

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/notebook/
	${INSTALL_DATA_DIR} ${PREFIX}/share/notebook/lib/{markupparser,rotext,trycatch}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/notebook/
	${INSTALL_SCRIPT} ${WRKDIR}/notebook/*.tcl	${PREFIX}/share/notebook/
	${INSTALL_SCRIPT} ${WRKDIR}/notebook/*.nbk ${PREFIX}/share/notebook/
	${INSTALL_SCRIPT} ${WRKDIR}/notebook/*.dat ${PREFIX}/share/notebook/
	${INSTALL_SCRIPT} ${WRKDIR}/notebook/*.gif ${PREFIX}/share/notebook/
	${INSTALL_SCRIPT} ${WRKDIR}/notebook/lib/markupparser/*.tcl ${PREFIX}/share/notebook/lib/markupparser/
	${INSTALL_SCRIPT} ${WRKDIR}/notebook/lib/rotext/*.tcl ${PREFIX}/share/notebook/lib/rotext/
	${INSTALL_SCRIPT} ${WRKDIR}/notebook/lib/trycatch/*.tcl ${PREFIX}/share/notebook/lib/trycatch/
	${INSTALL_DATA} ${WRKDIR}/notebook/{Home.html,README.txt,Sandbox.html,license.txt}	${PREFIX}/share/doc/notebook/

.include <bsd.port.mk>
