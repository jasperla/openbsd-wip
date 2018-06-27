# $OpenBSD: Makefile,v 1.58 2018/06/22 08:30:46 landry Exp $

COMMENT-about =			lxqt translations
COMMENT-admin =			lxqt translations
COMMENT-config =		lxqt translations
COMMENT-notificationd =		lxqt translations
COMMENT-openssh-askpass =	lxqt translations
COMMENT-panel =			lxqt translations
COMMENT-policykit =		lxqt translations
COMMENT-powermanagement =	lxqt translations
COMMENT-runner =		lxqt translations
COMMENT-session =		lxqt translations
COMMENT-sudo =			lxqt translations
COMMENT-libfm-qt =		lxqt translations
COMMENT-main =			lxqt translations
COMMENT-lximage-qt =		lxqt translations
COMMENT-obconf-qt =		lxqt translations
COMMENT-pavucontrol-qt =	lxqt translations
COMMENT-pcmanfm-qt =		lxqt translations
COMMENT-qterminal =		lxqt translations
COMMENT-qtermwidget =		lxqt translations

VERSION =			0.13.0

NAME=				lxqt-l10n
DISTNAME=			${NAME}-${VERSION}
FULLPKGNAME-about =		lxqt-about-l10n-${VERSION}
FULLPKGNAME-admin =		lxqt-admin-l10n-${VERSION}
FULLPKGNAME-config =		lxqt-config-l10n-${VERSION}
FULLPKGNAME-notificationd =	lxqt-notificationd-l10n-${VERSION}
FULLPKGNAME-openssh-askpass =	lxqt-openssh-askpass-l10n-${VERSION}
FULLPKGNAME-panel =		lxqt-panel-l10n-${VERSION}
FULLPKGNAME-policykit =		lxqt-policykit-l10n-${VERSION}
FULLPKGNAME-powermanagement =	lxqt-powermanagement-l10n-${VERSION}
FULLPKGNAME-runner =		lxqt-runner-l10n-${VERSION}
FULLPKGNAME-session =		lxqt-session-l10n-${VERSION}
FULLPKGNAME-sudo =		lxqt-sudo-l10n-${VERSION}
FULLPKGNAME-libfm-qt =		libfm-qt-l10n-${VERSION}
FULLPKGNAME-main =		liblxqt-l10n-${VERSION}
FULLPKGNAME-lximage-qt =	lximage-qt-l10n-${VERSION}
FULLPKGNAME-obconf-qt =		obconf-qt-l10n-${VERSION}
FULLPKGNAME-pavucontrol-qt =	pavucontrol-qt-l10n-${VERSION}
FULLPKGNAME-pcmanfm-qt =	pcmanfm-qt-l10n-${VERSION}
FULLPKGNAME-qterminal =		qterminal-l10n-${VERSION}
FULLPKGNAME-qtermwidget =	qtermwidget-l10n-${VERSION}

MULTI_PACKAGES +=	-about -admin -config
MULTI_PACKAGES +=	-notificationd -openssh-askpass
MULTI_PACKAGES +=	-panel -policykit -powermanagement
MULTI_PACKAGES +=	-runner -session -sudo -libfm-qt
MULTI_PACKAGES +=	-main -lximage-qt -obconf-qt -pavucontrol-qt
MULTI_PACKAGES +=	-pcmanfm-qt -qterminal -qtermwidget

BUILD_DEPENDS +=	x11/qt5/qtbase,-main \
			x11/qt5/qttools \
			x11/lxqt/build-tools

CONFIGURE_ENV +=	Qt5Core_DIR=${LOCALBASE}/lib/qt5/cmake
CONFIGURE_ENV +=	Qt5LinguistTools_DIR=${LOCALBASE}/lib/qt5/cmake


.include <bsd.port.mk>
