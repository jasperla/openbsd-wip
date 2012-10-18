# $OpenBSD: Makefile,v 1.11 2011/09/16 12:29:17 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		Qt Widgets for Technical Applications
DISTNAME =		qwt-6.0.1
SHARED_LIBS =		qwt 7.0
SHARED_LIBS +=		qwtmathml	6.0 # 6.0

CATEGORIES =		x11
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://qwt.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qwt/}

# Qwt License, Version 1.0
# http://qwt.sourceforge.net/qwtlicense.html
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		x11/qt4
NO_REGRESS =		Yes
USE_GMAKE =		Yes

MAKE_FLAGS =		LIBqwt_VERSION=${LIBqwt_VERSION}

WANTLIB =	m freetype pthread stdc++
WANTLIB +=	ICE QtSvg SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB +=	QtDesigner QtGui QtScript QtXml

BUILD_DEPENDS =		devel/doxygen \
			math/graphviz

# svgmap example not included to prevent the need of svg dependencies
EXAMPLES =	bode cpuplot curvdemo1 curvdemo2 dials event_filter \
		friedberg navigation oscilloscope plotmatrix radio \
		rasterview realtime refreshtest sinusplot sliders \
		spectrogram stylesheets sysinfo tvplot

SUBST_VARS =	WRKINST EXAMPLES

post-extract:
	find ${WRKSRC} -name '*.orig' -exec rm -f {} \;

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/qwtconfig.pri ${WRKSRC}/designer/designer.pro \
		${WRKSRC}/examples/examples.pri

do-configure:
	@cd ${WRKSRC} && qmake4

post-build:
	cd ${WRKSRC}/doc && doxygen Doxyfile

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man/man3/* ${PREFIX}/man/man3/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qwt
	${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} \
		${FILESDIR}/Makefile.examples \
		${PREFIX}/share/examples/qwt/Makefile
	${INSTALL_DATA} ${WRKSRC}/examples/examples.pri \
		${PREFIX}/share/examples/qwt/
	${INSTALL_DATA} ${WRKSRC}/qwtbuild.pri \
		${PREFIX}/share/examples/qwt/

.for i in ${EXAMPLES}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qwt/${i}
	${INSTALL_DATA} ${WRKSRC}/examples/${i}/* \
		${PREFIX}/share/examples/qwt/${i}/
.endfor

	cd ${PREFIX} && rm -rf features*

.include <bsd.port.mk>
