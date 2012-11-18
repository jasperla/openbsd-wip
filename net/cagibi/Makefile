# $OpenBSD$

CATEGORIES =	net
COMMENT =	SSDP cache/proxy daemon for KDE
HOMEPAGE =	https://projects.kde.org/projects/kdesupport/cagibi
REVISION =	1
DISTNAME =	cagibi-0.2.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/cagibi/}
EXTRACT_SUFX =	.tar.bz2

# GPLv2+ and LGPLv2.1+
PERMIT_DISTFILES_CDROM =        Yes
PERMIT_DISTFILES_FTP =          Yes
PERMIT_PACKAGE_CDROM =          Yes
PERMIT_PACKAGE_FTP =            Yes

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtXml

MODULES =	x11/kde4
MODKDE4_USE =

RUN_DEPENDS =	net/avahi

WRONG_SYSCONF_FILES =	dbus-1		share/examples \
			cagibid.conf	share/examples/cagibi

CONFIGURE_ARGS =	-DSYSCONF_INSTALL_DIR:String=${SYSCONFDIR}

.include <bsd.port.mk>
