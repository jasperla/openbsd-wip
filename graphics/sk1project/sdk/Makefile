# $OpenBSD$

COMMENT =		sK1 SDK

DISTNAME =		sk1sdk-0.9.1pre_rev1014

MASTER_SITES =		${HOMEPAGE}/downloads/sk1/${V}/

MODULES =		lang/python \
			x11/tk

LIB_DEPENDS =		${MODTK_LIB_DEPENDS}

MAKE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
			-I${MODTCL_INCDIR} -I${MODTK_INCDIR}" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib \
			-L${MODTCL_LIBDIR} -L${MODTK_LIBDIR}"

NO_REGRESS =		Yes

do-configure:
	perl -pi -e "s,tcl_ver=\'\',tcl_ver=\'${MODTK_VERSION:S/.//}\',g" ${WRKSRC}/setup.py
	perl -pi -e 's,python,${MODPY_BIN},g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
