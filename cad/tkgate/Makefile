# $OpenBSD$

COMMENT =		Tcl/Tk based digital circuit editor and simulator

DISTNAME =		tkgate-2.0-rc1

CATEGORIES =		cad x11

HOMEPAGE =		http://www.tkgate.org/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =		https://bitbucket.org/starling13/tkgate/downloads/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 c m pthread ${MODTK_WANTLIB}

MODULES =		converters/libiconv \
			x11/tk

BUILD_DEPENDS = 	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS = 		${MODTK_RUN_DEPENDS} \
			devel/desktop-file-utils

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV += 	TKGATE_LIBDIRS="${MODTCL_LIBDIR} ${MODTK_LIBDIR} \
				${LOCALBASE}/lib ${X11BASE}/lib" \
			TKGATE_INCDIRS="${MODTCL_INCDIR} ${MODTK_INCDIR} \
				${LOCALBASE}/include ${X11BASE}/include" \
			TKGATE_TCLTK_VERSIONS=${MODTK_VERSION}
CFLAGS += 		-DDEBUG -pthread

post-extract:
	@rm -f ${WRKSRC}/src/gmac/luthor.c
	@rm -f ${WRKSRC}/src/gmac/vgrammar.c
	@rm -f ${WRKSRC}/src/gmac/vgrammar.h
	@rm -f ${WRKSRC}/src/verga/luthor.c
	@rm -f ${WRKSRC}/src/verga/vgrammar.c
	@rm -f ${WRKSRC}/src/verga/vgrammar.h
	@rm -f ${WRKSRC}/src/tkgate/luthor.c
	@rm -f ${WRKSRC}/src/tkgate/vgrammar.c
	@rm -f ${WRKSRC}/src/tkgate/vgrammar.h
			
pre-configure:
	${SUBST_CMD} ${WRKSRC}/scripts/parms.tcl ${WRKSRC}/src/tkgate/verilog_out.c
	${MODTCL_WISH_ADJ} ${WRKSRC}/scripts/tree.tcl

post-install:
	rm ${PREFIX}/share/tkgate/scripts/parms.tcl.*

.include <bsd.port.mk>
