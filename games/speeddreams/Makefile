# $OpenBSD$

SHARED_ONLY =		Yes

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source motorsport simulation

V =			2.0.0
REV =			r4687
DISTNAME =		speed-dreams-src-base-$V-${REV}
PKGNAME =		speeddreams-$V

CATEGORIES =		games

HOMEPAGE =		http://www.speed-dreams.org/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SDL SM X11 Xext Xrandr c enet jpeg m openal
WANTLIB += png pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=speed-dreams/}
EXTRACT_SUFX =		.tar.xz
# avoid WRKDIST = ${WRKDIR}
EXTRACT_CASES = *.tar.xz) \
        xzcat ${FULLDISTDIR}/$$archive | ${TAR} xf - -C ${WRKDIST};;

DISTFILES = \
	${DISTNAME}${EXTRACT_SUFX} \
	speed-dreams-src-hq-cars-and-tracks-$V-${REV}${EXTRACT_SUFX} \
	speed-dreams-src-more-hq-cars-and-tracks-$V-${REV}${EXTRACT_SUFX} \
	speed-dreams-src-wip-cars-and-tracks-$V-${REV}${EXTRACT_SUFX} \
	speed-dreams-src-unmaintained-$V-${REV}${EXTRACT_SUFX}

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/plib
LIB_DEPENDS =		net/enet \
			devel/sdl \
			audio/openal \
			graphics/png \
			graphics/jpeg

CONFIGURE_ARGS +=	-DOPTION_OFFICIAL_ONLY=ON

NO_TEST =		Yes

CFLAGS =		-I${X11BASE}/include

pre-extract:
	@mkdir ${WRKDIST}

.include <bsd.port.mk>
