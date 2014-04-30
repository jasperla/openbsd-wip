# $OpenBSD$

COMMENT =		fast Mercurial log navigator

MODPY_EGG_VERSION =	1.8.0
DISTNAME =		hgview-${MODPY_EGG_VERSION}

CATEGORIES =		devel
HOMEPAGE =		http://www.hgview.org/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.logilab.org/pub/hgview/

MODULES =		lang/python
BUILD_DEPENDS =		textproc/asciidoc \
			textproc/xmlto \
			x11/py-qt4
RUN_DEPENDS =		x11/py-qt4 \
			editors/py-qscintilla \
			devel/py-urwid

.include <bsd.port.mk>
