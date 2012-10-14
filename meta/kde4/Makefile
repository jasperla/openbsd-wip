# $OpenBSD$

COMMENT-main =		KDE4 desktop meta-package (base installation)
COMMENT-extras =	KDE4 desktop meta-package (full installation)

MODULES =		x11/kde4
MODKDE4_USE =		workspace

V =			${MODKDE4_VERSION}
PKGNAME =		kde-${V}
PKGNAME-main =		kde-${V}
PKGNAME-extras =	kde-extras-${V}
REVISION-extras =	0

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

MULTI_PACKAGES =	-main -extras

RUN_DEPENDS-main = \
		x11/kde4/ark            \
		x11/kde4/kwallet        \
		x11/kde4/printer-applet \
		x11/kde4/superkaramba   \
		x11/kde4/sweeper        \

RUN_DEPENDS-extras = \
		STEM-=${V}:${BASE_PKGPATH},-main \
		x11/kde4/kdf            \
		x11/kde4/filelight      \
		x11/kde4/kfloppy        \
		x11/kde4/kgpg           \
		x11/kde4/kremotecontrol \
		x11/kde4/ktimer         \
		x11/kde4/wallpapers     \

.include <bsd.port.mk>
