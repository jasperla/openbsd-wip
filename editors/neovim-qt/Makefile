# $OpenBSD: Makefile.template,v 1.79 2019/03/03 23:18:37 sthen Exp $

COMMENT = QT5 GUI front-end for neovim

GH_ACCOUNT = equalsraf
GH_PROJECT = neovim-qt
GH_TAGNAME = v0.2.16

CATEGORIES = editors

HOMEPAGE = https://github.com/equalsraf/neovim-qt/wiki

MAINTAINER = Laurence Tratt <laurie@tratt.net>

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5Svg Qt5Widgets
WANTLIB += c m

MODULES = devel/cmake x11/qt5

BUILD_DEPENDS = devel/cmake \
                devel/ninja \
                editors/neovim
LIB_DEPENDS = x11/qt5/qtsvg
RUN_DEPENDS = devel/desktop-file-utils \
              editors/neovim \
              x11/xclip

SEPARATE_BUILD = Yes

.include <bsd.port.mk>
