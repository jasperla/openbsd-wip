# $OpenBSD$

COMMENT =		fast Mercurial log navigator

MODPY_EGG_VERSION =	1.8.0
DISTNAME =		hgview-${MODPY_EGG_VERSION}

CATEGORIES =		devel
HOMEPAGE =		http://www.hgview.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.logilab.org/pub/hgview/

MODULES =		lang/python
MODPY_SETUPTOOLS =	No
USE_GMAKE =		Yes # for docs
BUILD_DEPENDS =		textproc/asciidoc \
			textproc/xmlto \
			x11/py-qt4	# needed to build GUI
RUN_DEPENDS =		x11/py-qt4 \
			editors/py-qscintilla
#TEST_DEPENDS =		??? # XXX any tests?

# XXX needs a newer py-urwid for -I curses

.include <bsd.port.mk>
