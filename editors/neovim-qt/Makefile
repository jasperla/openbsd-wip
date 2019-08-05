# $OpenBSD: Makefile.template,v 1.79 2019/03/03 23:18:37 sthen Exp $

COMMENT = QT5 GUI front-end for neovim

GH_ACCOUNT = equalsraf
GH_PROJECT = neovim-qt
GH_TAGNAME = v0.2.12

CATEGORIES = editors

HOMEPAGE = https://github.com/equalsraf/neovim-qt/wiki

MAINTAINER = Laurence Tratt <laurie@tratt.net>

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB += c m

MODULES = devel/cmake x11/qt5

BUILD_DEPENDS = editors/neovim
RUN_DEPENDS = devel/desktop-file-utils \
              editors/neovim \
              x11/xclip

SEPARATE_BUILD = Yes

.include <bsd.port.mk>
