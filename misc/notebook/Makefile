# $OpenBSD $

COMMENT =		wiki written in TCL/TK

V =             0.9
DISTNAME =		notebook${V}

CATEGORIES =		misc x11
HOMEPAGE =			http://www.wjduquette.com/notebook/
#HOMEPAGE=			http://notebook.wjduquette.com/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes


MASTER_SITES            = ${HOMEPAGE}

MODULES =               lang/tcl x11/tk
RUN_DEPENDS =           ${MODTK_RUN_DEPENDS} devel/tcllib

USE_X11=        Yes

NO_BUILD =              Yes
NO_TEST =            Yes

.include <bsd.port.mk>
