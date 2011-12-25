# $OpenBSD$

COMMENT =		vector graphics editor

DISTNAME =		sK1-${V}
PKGNAME =		${DISTNAME:L}

WANTLIB =		X11 Xext freetype m z

MASTER_SITES =		${HOMEPAGE}/downloads/sk1/${V}/

MODULES =		devel/gettext \
			lang/python \
			x11/tk

LIB_DEPENDS =		${MODTK_LIB_DEPENDS} \
					graphics/cairo \
					graphics/py-Imaging \
					print/py-reportlab/reportlab

RUN_DEPENDS = 		graphics/sk1project/libs
#			graphics/sk1project/sdk

MAKE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/cairo \
			-I${MODTCL_INCDIR} -I${MODTK_INCDIR} -I${X11BASE}/include \
			-I${X11BASE}/include/freetype2" \
			LDFLAGS="-L${LOCALBASE}/lib -L${MODTCL_LIBDIR} -L${MODTK_LIBDIR} \
			-L${X11BASE}/lib -liconv -lintl"

#NO_REGRESS =		Yes

WRKDIST =              ${WRKDIR}/sK1-0.9.1pre

do-configure:
	perl -pi -e "s,tcl_ver=\'\',tcl_ver=\'${MODTK_VERSION:S/.//}\',g" ${WRKSRC}/setup.py
	perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g' ${WRKSRC}/src/__init__.py
	perl -pi -e 's,python,${MODPY_BIN},g' ${WRKSRC}/setup.py
	perl -pi -e 's,python,${MODPY_BIN},g' ${WRKSRC}/src/sk1

.include <bsd.port.mk>
