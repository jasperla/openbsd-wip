# $OpenBSD$

COMMENT-main =		KDE4 desktop meta-package (base installation)
COMMENT-extras =	KDE4 desktop meta-package (full installation)
COMMENT-accessbility =	KDE4 accessbility meta-package
COMMENT-edu =		KDE4 educational meta-package
COMMENT-games =		KDE4 games meta-package
COMMENT-graphics =	KDE4 graphics meta-package
COMMENT-multimedia =	KDE4 multimedia meta-package

PKGNAME-main =		kde-${MODKDE4_VERSION}
PKGNAME-extras =	kde-extras-${MODKDE4_VERSION}
PKGNAME-accessbility =	kdeaccessbility-${MODKDE4_VERSION}
PKGNAME-edu =		kdeedu-${MODKDE4_VERSION}
PKGNAME-games =		kdegames-${MODKDE4_VERSION}
PKGNAME-graphics =	kdegraphics-${MODKDE4_VERSION}
PKGNAME-multimedia =	kdemultimedia-${MODKDE4_VERSION}

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

MODULES =		x11/kde4
MODKDE4_USE =

MULTI_PACKAGES =	-main -extras
MULTI_PACKAGES +=	-accessbility -edu -games -graphics -multimedia
FLAVOR_EXT =

RUN_DEPENDS-main = \
	${BASE_PKGPATH},-accessbility=${MODKDE4_VERSION} \
	${MODKDE4_DEP_DIR}/ark		\
	${MODKDE4_DEP_DIR}/base-artwork	\
	${MODKDE4_DEP_DIR}/kate		\
	${MODKDE4_DEP_DIR}/kgpg		\
	${MODKDE4_DEP_DIR}/konsole	\
	${MODKDE4_DEP_DIR}/kwallet	\
	${MODKDE4_DEP_DIR}/nepomuk-widgets	\
	${MODKDE4_DEP_DIR}/pim		\
	${MODKDE4_DEP_DIR}/printer-manager	\
	${MODKDE4_DEP_DIR}/superkaramba	\
	${MODKDE4_DEP_DIR}/sweeper	\
	${MODKDE4_DEP_DIR}/workspace

RUN_DEPENDS-extras = \
	${BASE_PKGPATH},-main>=${MODKDE4_VERSION}	\
	${BASE_PKGPATH},-edu>=${MODKDE4_VERSION}	\
	${BASE_PKGPATH},-games=${MODKDE4_VERSION}	\
	${BASE_PKGPATH},-graphics>=${MODKDE4_VERSION}	\
	${BASE_PKGPATH},-multimedia>=${MODKDE4_VERSION}	\
	${MODKDE4_DEP_DIR}/artwork	\
	${MODKDE4_DEP_DIR}/kdf		\
	${MODKDE4_DEP_DIR}/filelight	\
	${MODKDE4_DEP_DIR}/kfloppy	\
	${MODKDE4_DEP_DIR}/kremotecontrol	\
	${MODKDE4_DEP_DIR}/ktimer		\
	${MODKDE4_DEP_DIR}/wallpapers	\
	editors/kile-kde4	\
	graphics/digikam-kde4,-main \
	multimedia/k3b-kde4	\
	multimedia/kdenlive	\
	net/ktorrent-kde4	\
	x11/yakuake-kde4

RUN_DEPENDS-accessbility = \
	${MODKDE4_DEP_DIR}/jovie		\
	${MODKDE4_DEP_DIR}/kaccessible	\
	${MODKDE4_DEP_DIR}/kmag		\
	${MODKDE4_DEP_DIR}/kmousetool	\
	${MODKDE4_DEP_DIR}/kmouth	

RUN_DEPENDS-edu = \
	${MODKDE4_DEP_DIR}/blinken	\
	${MODKDE4_DEP_DIR}/cantor	\
	${MODKDE4_DEP_DIR}/analitza	\
	${MODKDE4_DEP_DIR}/kalgebra	\
	${MODKDE4_DEP_DIR}/kalzium	\
	${MODKDE4_DEP_DIR}/kanagram	\
	${MODKDE4_DEP_DIR}/kbruch	\
	${MODKDE4_DEP_DIR}/kgeography	\
	${MODKDE4_DEP_DIR}/khangman	\
	${MODKDE4_DEP_DIR}/kig		\
	${MODKDE4_DEP_DIR}/kiten	\
	${MODKDE4_DEP_DIR}/klettres	\
	${MODKDE4_DEP_DIR}/kmplot	\
	${MODKDE4_DEP_DIR}/kstars	\
	${MODKDE4_DEP_DIR}/ktouch	\
	${MODKDE4_DEP_DIR}/kturtle	\
	${MODKDE4_DEP_DIR}/kwordquiz	\
	${MODKDE4_DEP_DIR}/libkdeedu	\
	${MODKDE4_DEP_DIR}/marble	\
	${MODKDE4_DEP_DIR}/pairs	\
	${MODKDE4_DEP_DIR}/parley	\
	${MODKDE4_DEP_DIR}/rocs		\
	${MODKDE4_DEP_DIR}/step

RUN_DEPENDS-graphics = \
	${MODKDE4_DEP_DIR}/graphics-mobipocket		\
	${MODKDE4_DEP_DIR}/graphics-strigi-analyzer	\
	${MODKDE4_DEP_DIR}/graphics-thumbnailers	\
	${MODKDE4_DEP_DIR}/gwenview	\
	${MODKDE4_DEP_DIR}/kamera	\
	${MODKDE4_DEP_DIR}/kcolorchooser	\
	${MODKDE4_DEP_DIR}/kgamma	\
	${MODKDE4_DEP_DIR}/kolourpaint	\
	${MODKDE4_DEP_DIR}/kruler	\
	${MODKDE4_DEP_DIR}/ksaneplugin	\
	${MODKDE4_DEP_DIR}/ksnapshot	\
	${MODKDE4_DEP_DIR}/libkdcraw	\
	${MODKDE4_DEP_DIR}/libkexiv2	\
	${MODKDE4_DEP_DIR}/libkipi	\
	${MODKDE4_DEP_DIR}/libksane	\
	${MODKDE4_DEP_DIR}/okular	\
	${MODKDE4_DEP_DIR}/svgpart	\
	graphics/digikam-kde4,-kipi

RUN_DEPENDS-games = \
	${MODKDE4_DEP_DIR}/bomber	\
	${MODKDE4_DEP_DIR}/bovo		\
	${MODKDE4_DEP_DIR}/granatier	\
	${MODKDE4_DEP_DIR}/kapman	\
	${MODKDE4_DEP_DIR}/katomic	\
	${MODKDE4_DEP_DIR}/kblackbox	\
	${MODKDE4_DEP_DIR}/kblocks	\
	${MODKDE4_DEP_DIR}/kbounce	\
	${MODKDE4_DEP_DIR}/kbreakout	\
	${MODKDE4_DEP_DIR}/kdiamond	\
	${MODKDE4_DEP_DIR}/kfourinline	\
	${MODKDE4_DEP_DIR}/kgoldrunner	\
	${MODKDE4_DEP_DIR}/kigo		\
	${MODKDE4_DEP_DIR}/killbots	\
	${MODKDE4_DEP_DIR}/kiriki	\
	${MODKDE4_DEP_DIR}/kjumpingcube \
	${MODKDE4_DEP_DIR}/klickety	\
	${MODKDE4_DEP_DIR}/klines	\
	${MODKDE4_DEP_DIR}/kmahjongg	\
	${MODKDE4_DEP_DIR}/kmines	\
	${MODKDE4_DEP_DIR}/knavalbattle	\
	${MODKDE4_DEP_DIR}/knetwalk	\
	${MODKDE4_DEP_DIR}/kolf		\
	${MODKDE4_DEP_DIR}/kollision	\
	${MODKDE4_DEP_DIR}/konquest	\
	${MODKDE4_DEP_DIR}/kpat		\
	${MODKDE4_DEP_DIR}/kreversi	\
	${MODKDE4_DEP_DIR}/kshisen	\
	${MODKDE4_DEP_DIR}/ksirk	\
	${MODKDE4_DEP_DIR}/ksnakeduel	\
	${MODKDE4_DEP_DIR}/kspaceduel	\
	${MODKDE4_DEP_DIR}/ksquares	\
	${MODKDE4_DEP_DIR}/ksudoku	\
	${MODKDE4_DEP_DIR}/ktuberling	\
	${MODKDE4_DEP_DIR}/kubrick	\
	${MODKDE4_DEP_DIR}/libkmahjongg	\
	${MODKDE4_DEP_DIR}/lskat	\
	${MODKDE4_DEP_DIR}/picmi	\

RUN_DEPENDS-multimedia = \
	${MODKDE4_DEP_DIR}/audiocd-kio	\
	${MODKDE4_DEP_DIR}/ffmpegthumbs	\
	${MODKDE4_DEP_DIR}/dragon	\
	${MODKDE4_DEP_DIR}/juk		\
	${MODKDE4_DEP_DIR}/kmix		\
	${MODKDE4_DEP_DIR}/kscd		\
	${MODKDE4_DEP_DIR}/mplayerthumbs

.include <bsd.port.mk>
