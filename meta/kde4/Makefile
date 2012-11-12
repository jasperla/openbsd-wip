# $OpenBSD$

COMMENT-main =		KDE4 desktop meta-package (base installation)
COMMENT-extras =	KDE4 desktop meta-package (full installation)
COMMENT-accessbility =	KDE4 accessbility meta-package
COMMENT-edu =		KDE4 educational meta-package
COMMENT-graphics =	KDE4 graphics meta-package
COMMENT-multimedia =	KDE4 multimedia meta-package

MODULES =		x11/kde4
MODKDE4_USE =		workspace

V =			${MODKDE4_VERSION}
PKGNAME =		kde-${V}
PKGNAME-main =		kde-${V}
PKGNAME-extras =	kde-extras-${V}
PKGNAME-accessbility =	kdeaccessbility-${V}
PKGNAME-edu =		kdeedu-${V}
PKGNAME-graphics =	kdegraphics-${V}
PKGNAME-multimedia =	kdemultimedia-${V}

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

MULTI_PACKAGES =	-main -extras
MULTI_PACKAGES +=	-accessbility -edu -graphics -multimedia

RUN_DEPENDS-main = \
		STEM-=${V}:${BASE_PKGPATH},-accessbility \
		x11/kde4/ark            \
		x11/kde4/kate           \
		x11/kde4/konsole        \
		x11/kde4/kwallet        \
		x11/kde4/printer-applet \
		x11/kde4/superkaramba   \
		x11/kde4/sweeper        \
		x11/kde4/workspace      \

RUN_DEPENDS-extras = \
		STEM-=${V}:${BASE_PKGPATH},-main \
		STEM-=${V}:${BASE_PKGPATH},-edu \
		STEM-=${V}:${BASE_PKGPATH},-graphics \
		STEM-=${V}:${BASE_PKGPATH},-multimedia \
		productivity/kmymoney	\
		x11/kde4/artwork	\
		x11/kde4/base-artwork	\
		x11/kde4/digikam,-main	\
		x11/kde4/digikam,-kipi	\
		x11/kde4/kdf		\
		x11/kde4/kile		\
		x11/kde4/filelight	\
		x11/kde4/kfloppy	\
		x11/kde4/kgpg		\
		x11/kde4/kremotecontrol \
		x11/kde4/ktimer		\
		x11/kde4/ktorrent	\
		x11/kde4/wallpapers	\
		x11/kde4/yakuake	\

RUN_DEPENDS-accessbility = \
		x11/kde4/jovie		\
		x11/kde4/kmag		\
		x11/kde4/kmouth		\
		x11/kde4/kaccessible	\
		x11/kde4/kmousetool	\

RUN_DEPENDS-edu = \
		x11/kde4/blinken	\
		x11/kde4/cantor		\
		x11/kde4/analitza	\
		x11/kde4/kalgebra	\
		x11/kde4/kalzium	\
		x11/kde4/kanagram	\
		x11/kde4/kbruch		\
		x11/kde4/kgeography	\
		x11/kde4/khangman	\
		x11/kde4/kig		\
		x11/kde4/kiten		\
		x11/kde4/klettres	\
		x11/kde4/kmplot		\
		x11/kde4/kstars		\
		x11/kde4/ktouch		\
		x11/kde4/kturtle	\
		x11/kde4/kwordquiz	\
		x11/kde4/libkdeedu	\
		x11/kde4/marble		\
		x11/kde4/pairs		\
		x11/kde4/parley		\
		x11/kde4/rocs		\
		x11/kde4/step		\

RUN_DEPENDS-graphics = \
		x11/kde4/audiocd-kio	\
		x11/kde4/digikam,-kipi	\
		x11/kde4/graphics-strigi-analyzer \
		x11/kde4/graphics-thumbnailers \
		x11/kde4/gwenview	\
		x11/kde4/kamera		\
		x11/kde4/kcolorchooser	\
		x11/kde4/kgamma		\
		x11/kde4/kolourpaint	\
		x11/kde4/kruler		\
		x11/kde4/ksaneplugin	\
		x11/kde4/ksnapshot	\
		x11/kde4/libkdcraw	\
		x11/kde4/libkexiv2	\
		x11/kde4/libkipi	\
		x11/kde4/libksane	\
		x11/kde4/mobipocket	\
		x11/kde4/okular		\
		x11/kde4/svgpart	\

RUN_DEPENDS-multimedia = \
		x11/kde4/audiocd-kio	\
		x11/kde4/ffmpegthumbs	\
		x11/kde4/dragon		\
		x11/kde4/juk		\
		x11/kde4/kmix		\
		x11/kde4/kscd		\
		x11/kde4/mplayerthumbs	\

.include <bsd.port.mk>
