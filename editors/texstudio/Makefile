# $OpenBSD$

COMMENT =		LaTex development environment

V =			2.7.0
DISTNAME =		texstudio-${V}
CATEGORIES =		editors

HOMEPAGE =		http://texstudio.sourceforge.net/

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml SM X11 Xext
WANTLIB += Xi Xinerama Xrender c fontconfig freetype m poppler-qt4
WANTLIB += pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=texstudio/}

MODULES =		gcc4 x11/qt4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

RUN_DEPENDS=		print/texlive/base \
			devel/desktop-file-utils

LIB_DEPENDS=		print/poppler,,-qt4
#TEST_DEPENDS =		???

FAKE_FLAGS =		INSTALL_ROOT=${WRKINST}
#TEST_FLAGS =		???

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS +=	PREFIX=${PREFIX} \
			NO_CRASH_HANDLER=true \
			CONFIG-=debug
# XXX
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/texstudio${V}

#TEST_TARGET =		???

do-configure:
	cd ${WRKBUILD} && env -i ${CONFIGURE_ENV} qmake4 ${WRKSRC} \
		${CONFIGURE_ARGS}

post-configure:
	perl -pi -e "s,/usr/include,${LOCALBASE}/include,g" \
		${WRKBUILD}/Makefile
	perl -pi -e "s,${LOCALBASE}/include/zlib.h,/usr/include/zlib.h,g" \
		${WRKBUILD}/Makefile

.include <bsd.port.mk>
