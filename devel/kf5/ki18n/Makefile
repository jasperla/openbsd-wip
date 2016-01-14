# $OpenBSD$

COMMENT =	KDE Gettext-based UI text internationalization
DISTNAME =	ki18n-${VERSION}

SHARED_LIBS =	KF5I18n		0.0

WANTLIB =	Qt5Core Qt5Script m

MODULES =	devel/gettext lang/python

CONFIGURE_ARGS =	-DCMAKE_POLICY_DEFAULT_CMP0037=OLD

# for tests
PORTHOME =	${WRKDIR}

# Calling compileall.py isn't needed, the ts-pmap-compile script
# gets called with "${PYTHON} -B ...".

.include <bsd.port.mk>
