# $OpenBSD$

COMMENT =		sK1 libs

DISTNAME =		sk1libs-${V}

MASTER_SITES =		${HOMEPAGE}/downloads/sk1/${V}/

MODULES =		lang/python

LIB_DEPENDS =		graphics/lcms

MAKE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_REGRESS =		Yes

WRKDIST =              ${WRKDIR}/sk1libs-0.9.1

do-configure:
	perl -pi -e 's,python,${MODPY_BIN},g' ${WRKSRC}/setup.py
	perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g' ${WRKSRC}/src/__init__.py

.include <bsd.port.mk>
