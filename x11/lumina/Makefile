# $OpenBSD$

COMMENT=	XXX

DISTNAME=	lumina-0.0.1
WRKDIST=	${WRKDIR}/lumina

CATEGORIES=	x11

HOMEPAGE=	XXX
#MASTER_SITES=

# XXX
PERMIT_PACKAGE_CDROM =   Yes

MODULES=	x11/qt4

LIB_DEPENDS=	devel/qtsingleapplication \
		multimedia/phonon

# XXX xbrightness
RUN_DEPENDS=	x11/kde4/oxygen-icons \
		x11/fluxbox \
		x11/numlockx \
		x11/xscreensaver

MAKE_FLAGS=	CXXFLAGS="${CXXFLAGS} \
			-I${X11BASE}/include \
			-I${LOCALBASE}/include/kde4/KDE"

pre-configure:
# XXX
	cp ${FILESDIR}/LuminaOS-OpenBSD.cpp \
		${WRKSRC}/libLumina/LuminaOS-OpenBSD.cpp

.for i in lumina-config lumina-desktop lumina-fm lumina-open lumina-screenshot
	perl -pi -e 's,lrelease-qt4,lrelease4,g' ${WRKSRC}/$i/$i.pro
.endfor

do-configure:
	cd ${WRKSRC} && qmake4 -recursive

.include <bsd.port.mk>
