COMMENT=		fast XDG .desktop-file menu

PKGNAME =		j4-dmenu-desktop-3.2
MAINTAINER =		Chris Billington <emulti@disroot.org>

GH_ACCOUNT =            enkore
GH_PROJECT =            j4-dmenu-desktop
GH_TAGNAME =            r3.2

CATEGORIES =		x11

# MIT/X
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c m fmt spdlog

BUILD_DEPENDS =		devel/catch2

LIB_DEPENDS =		devel/fmt \
			devel/spdlog

RUN_DEPENDS =		x11/dmenu

MODULES =		devel/meson

CONFIGURE_ARGS +=	-Dgenerate-shell-completions=disabled \
			-Dnotify-implementation=kqueue \
			-Denable-tests=false

MAKE_ENV=		LDFLAGS="${LDFLAGS}" \
			X11INC=${X11BASE}/include \
			X11LIB=${X11BASE}/lib

NO_TEST =		yes

.include <bsd.port.mk>
