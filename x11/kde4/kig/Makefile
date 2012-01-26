# $OpenBSD$

COMMENT =	geometric constructions explorer for KDE
DISTNAME =	kig-${MODKDE_VERSION}
REVISION =	0

MODULES =	lang/python

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kdeui kemoticons kidletime kio kparts
WANTLIB += kprintutils ktexteditor kutils nepomuk nepomukutils soprano
WANTLIB += boost_python ${MODPY_WANTLIB}

LIB_DEPENDS =	devel/boost

CONFIGURE_ARGS =	-DBOOST_PYTHON_INCLUDES:String=${MODPY_INCDIR} \
			-DBOOST_PYTHON_LIBS:String="-L${LOCALBASE}/lib ${MODPY_WANTLIB:C/^/-l/} -lboost_python"

post-patch:
	${SUBST_CMD} ${WRKSRC}/pykig/pykig.py

.include <bsd.port.mk>
