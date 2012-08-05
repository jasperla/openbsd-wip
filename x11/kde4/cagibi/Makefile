# $OpenBSD$

COMMENT =	SSDP cache/proxy daemon for KDE
HOMEPAGE =	https://projects.kde.org/projects/kdesupport/cagibi
VERSION =	0.2.0
DISTNAME =	cagibi-${VERSION}

MASTER_SITES =	${MASTER_SITE_KDE:=stable/cagibi/}
EXTRACT_SUFX =	.tar.bz2

WANTLIB =  c m pthread stdc++
WANTLIB += QtDBus QtNetwork QtXml

MODKDE4_USE =

RUN_DEPENDS =	net/avahi

WRONG_SYSCONF_FILES =	dbus-1		share/examples \
			cagibid.conf	share/examples/cagibi

CONFIGURE_ARGS =	-DSYSCONF_INSTALL_DIR:String=${SYSCONFDIR}

.include <bsd.port.mk>
