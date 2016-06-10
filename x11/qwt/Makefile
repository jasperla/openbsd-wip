# $OpenBSD: Makefile,v 1.15 2014/10/05 09:49:14 zhuk Exp $


COMMENT =		Qt Widgets for Technical Applications
DISTNAME =		qwt-6.1.1
SHARED_LIBS =		qwt 7.0
CATEGORIES =		x11
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://qwt.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qwt/}

# Qwt License, Version 1.0
# http://qwt.sourceforge.net/qwtlicense.html, or
# ${WRKDIST}/doc/html/qwtlicense.html
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		x11/qt4
NO_TEST =		Yes
USE_GMAKE =		Yes

MAKE_ENV =		INSTALL_ROOT=${WRKINST}
MAKE_FLAGS =		LIBqwt_VERSION=${LIBqwt_VERSION}

WANTLIB =	GL ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB +=	m pthread stdc++
WANTLIB +=	lib/qt4/QtDesigner lib/qt4/QtGui lib/qt4/QtOpenGL
WANTLIB +=	lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtXml

# svgmap example not included to prevent the need of svg dependencies
EXAMPLES =	animation barchart bode controls cpuplot curvdemo1 dials \
		distrowatch event_filter friedberg itemeditor legends \
		oscilloscope radio rasterview realtime refreshtest scatterplot \
		simpleplot sinusplot spectrogram stockchart stylesheets \
		sysinfo tvplot

SUBST_VARS =	EXAMPLES

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/qwtconfig.pri ${WRKSRC}/designer/designer.pro \
		${WRKSRC}/examples/examples.pri

do-configure:
	@cd ${WRKSRC} && qmake4 -d -d -d

post-install:
	rm -f ${PREFIX}/man/man3/*
	rm -f ${PREFIX}/share/doc/qwt/man/man3/_tmp*
	mv ${PREFIX}/share/doc/qwt/man/man3/* ${PREFIX}/man/man3
	cd ${PREFIX}/share/doc/qwt; rmdir -p man/man3
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qwt
	${SUBST_DATA} ${FILESDIR}/Makefile.examples \
		${PREFIX}/share/examples/qwt/Makefile
	${INSTALL_DATA} ${WRKSRC}/examples/examples.pri \
		${PREFIX}/share/examples/qwt/

.for i in ${EXAMPLES}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qwt/${i}
	${INSTALL_DATA} ${WRKSRC}/examples/${i}/* \
		${PREFIX}/share/examples/qwt/${i}/
.endfor

.include <bsd.port.mk>
