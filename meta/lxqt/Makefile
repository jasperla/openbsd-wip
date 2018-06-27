# $OpenBSD: Makefile,v 1.17 2017/11/10 20:33:32 jca Exp $

COMMENT-main =		lxqt desktop meta-package (base installation)
COMMENT-extras =	lxqt desktop meta-package (full installation)

V =		0.13.0
PKGNAME=	lxqt-${V}

PKGNAME-main =		lxqt-${V}
PKGNAME-extras =	lxqt-extras-${V}

MAINTAINER ?=		LXQt porting team <openbsd-lxqt@googlegroups.com>

MULTI_PACKAGES =	-main -extras

# minimal
RUN_DEPENDS-main += \
		x11/lxqt/about \
		x11/lxqt/config \
		x11/lxqt/globalkeys \
		x11/lxqt/notificationd \
		x11/lxqt/panel \
		x11/lxqt/pcmanfm-qt \
		x11/lxqt/session \
		x11/lxqt/policykit \
		x11/lxqt/powermanagement \
		x11/lxqt/qtermwidget \
		x11/lxqt/qterminal \
		x11/lxqt/qtplugin \
		x11/lxqt/themes

# external deps
RUN_DEPENDS-main += \
		x11/openbox


RUN_DEPENDS-extras += \
		STEM-=${V}:${BASE_PKGPATH},-main \
		x11/lxqt/lximage-qt \
		x11/lxqt/obconf-qt \
		x11/lxqt/openssh-askpass \
		x11/lxqt/pavucontrol-qt \
		x11/lxqt/runner \
		x11/lxqt/screengrab \
		x11/lxqt/sudo

.include <bsd.port.mk>
