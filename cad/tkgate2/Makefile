# $OpenBSD$

COMMENT =		Tcl/Tk based digital circuit editor and simulator

DISTNAME =		tkgate-2.0-b10

CATEGORIES =		cad x11

HOMEPAGE =		http://www.tkgate.org

#MAINTAINER =		???

MASTER_SITES =		ftp://gadoid.ices.cmu.edu/pub/tkgate/pre-release/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		ICE SM X11 Xau Xdmcp c m pthread-stubs xcb

MODULES =		converters/libiconv \
			x11/tk

LIB_DEPENDS =		${MODTK_LIB_DEPENDS}

USE_X11 =		Yes
CONFIGURE_STYLE =	gnu

pre-patch:
.for i in *.orig* *.bak* *.old *~
	@find ${WRKSRC} -name $i -exec rm {} \;
.endfor

.include <bsd.port.mk>
