# $OpenBSD$

# Maybe i386 too, but has a hard requirement on SSE2 instructions.
ONLY_FOR_ARCHS =	amd64

V =		27.7.2
COMMENT =	independent fork of Firefox with new layout engine
DISTNAME =	palemoon-${V}
CATEGORIES =	www x11

GH_ACCOUNT =	MoonchildProductions
GH_PROJECT =	Pale-Moon
GH_TAGNAME =	${V}_Release

SHARED_LIBS +=	browsercomps              1.0 # 1.0
SHARED_LIBS +=	dbusservice               1.0 # 1.0
SHARED_LIBS +=	mozgnome                  1.0 # 1.0
SHARED_LIBS +=	mozalloc                  1.0 # 1.0
SHARED_LIBS +=	mozjs                     1.0 # 1.0
SHARED_LIBS +=	mozsqlite3                1.0 # 1.0
SHARED_LIBS +=	xul                       1.0 # 1.0

HOMEPAGE =	https://www.palemoon.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 c cairo
WANTLIB += dbus-1 dbus-glib-1 event fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 icudata icui18n icuuc intl jpeg m nspr4
WANTLIB += nss3 nssutil3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += plc4 plds4 smime3 sndio ssl3 vpx z

MODULES =	lang/python
MODPY_RUNDEP =	No
 
# XXX: ${MODGNU_AUTOCONF_DEPENDS} && AUTOCONF_VERSION=2.13 didn't work
BUILD_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/autoconf/2.13 \
		devel/yasm

LIB_DEPENDS =	devel/nspr \
		multimedia/libvpx \
		textproc/icu4c \
		security/nss \
		x11/dbus-glib \
		x11/gtk+2

CONFIGURE_ARGS =	--verbose

USE_GMAKE =	Yes

SEPARATE_BUILD =	Yes

USE_WXNEEDED =	Yes

SUBST_VARS +=	V

NO_TEST =	Yes

# Upstream build instructions say this is necessary.
post-extract:
	${SUBST_CMD} -DWRKBUILD="${WRKBUILD}" -DCFLAGS="${CFLAGS}" \
		-c -m 644 ${FILESDIR}/mozconfig ${WRKSRC}/.mozconfig

# Build system can't find the compilers without this.
pre-configure:
	sed -i -e 's,$${CC},${WRKDIR}/bin/cc,g' \
		-e 's,$${CXX},${WRKDIR}/bin/c++,g' \
			${WRKSRC}/client.mk

do-build:
	cd ${WRKSRC} && ./mach build

do-install:
	cd ${WRKSRC} && ./mach package
	${INSTALL_DATA_DIR} ${PREFIX}/lib/palemoon-${V}
	cd ${WRKBUILD}/dist/palemoon && \
		find * -type d -exec ${INSTALL_DATA_DIR} \
			"${PREFIX}/lib/palemoon-${V}/{}" \;
	cd ${WRKBUILD}/dist/palemoon && \
		find * -type f -exec ${INSTALL_DATA} \
			"{}" "${PREFIX}/lib/palemoon-${V}/{}" \;
	${INSTALL_PROGRAM} ${WRKBUILD}/dist/palemoon/palemoon{,-bin} \
		${PREFIX}/lib/palemoon-${V}
	${SUBST_CMD} -c -m 755 ${FILESDIR}/palemoon ${PREFIX}/bin/palemoon

.include <bsd.port.mk>
