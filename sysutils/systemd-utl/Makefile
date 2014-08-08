# $OpenBSD$

COMMENT=		systemd interfaces implementation

DISTNAME=		systemd-utl-0.0.1

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://uglyman.kremlin.cc/gitweb/gitweb.cgi?p=systemd-utl.git

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread

MODULES=		devel/gettext

# WIP: code is constently changing
BUILD_DEPENDS +=	devel/git
DISTFILES=		# empty
EXTRACT_ONLY=		# empty
WRKDIST=		${WRKDIR}/systemd-utl

NO_TEST=		Yes

LIB_DEPENDS=		devel/glib2

RUN_DEPENDS=		sysutils/consolekit \
			sysutils/polkit \
			x11/dbus

MAKE_FLAGS=		CC=${CC} \
			PREFIX=${PREFIX} \
			SYSCONFDIR=${SYSCONFDIR}

FAKE_FLAGS=		SYSCONFDIR=${PREFIX}/share/examples/systemd-utl

do-extract:
	cd ${WRKDIR} && \
		${LOCALBASE}/bin/git clone git://uglyman.kremlin.cc/git/systemd-utl.git

.include <bsd.port.mk>
