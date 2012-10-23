# $OpenBSD$

COMMENT =	K Desktop Environment, Graph Theory IDE
DISTNAME =	rocs-${MODKDE_VERSION}

SHARED_LIBS =	rocslib			0.0 # 4.7

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtScriptTools lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio knewstuff3 kparts krosscore
WANTLIB += krossui ktexteditor nepomuk nepomukutils plasma 
WANTLIB += soprano

BUILD_DEPENDS =	devel/boost

# Requires Boost >= 1.43
CONFIGURE_ARGS =	-DBUILD_DotFilePlugin:Bool=No

# XXX Ugly hack until CMake or rocs, whatever, could be fixed.
LOST_LIBS =	rocs_GraphStructure rocs_ListStructure
post-configure:
.for _l in ${LOST_LIBS}
	cd ${WRKBUILD}/lib && ln -s {,lib}${_l}.so
.endfor

.include <bsd.port.mk>
