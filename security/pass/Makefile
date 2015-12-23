# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		password manager

V =			1.6.5
DISTNAME =		password-store-$V
PKGNAME =		pass-$V

CATEGORIES =		security

HOMEPAGE =		http://www.passwordstore.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://git.zx2c4.com/password-store/snapshot/

EXTRACT_SUFX =		.tar.xz

RUN_DEPENDS =		devel/git \
			misc/gnugetopt \
			security/gnupg2 \
			security/pwgen \
			shells/bash \
			sysutils/colortree \
			x11/xclip

FAKE_FLAGS =		MANDIR=${DESTDIR}${PREFIX}/man

USE_GMAKE =		Yes

NO_BUILD =		Yes

DESTDIRNAME =		INSTALL_ROOT

.include <bsd.port.mk>
