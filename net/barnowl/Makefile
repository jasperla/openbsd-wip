# $OpenBSD$

COMMENT =		IM client

V =			1.9
DISTNAME =		barnowl-${V}-src
PKGNAME =		barnowl-${V}

CATEGORIES =		net

HOMEPAGE =		http://barnowl.mit.edu

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD-like/LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto glib-2.0 gobject-2.0 gthread-2.0 m ncursesw
WANTLIB += panelw perl pthread util

MASTER_SITES =		${HOMEPAGE}/dist/
EXTRACT_SUFX =		.tgz

MODULES =		perl devel/gettext
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Glib2 \
			devel/p5-AnyEvent \
			devel/p5-Class-Accessor \
			devel/p5-PAR \
			net/p5-Net-DNS \
			security/p5-Authen-SASL \
			security/p5-IO-Socket-SSL \
			security/p5-Digest-SHA1 \
			textproc/p5-Text-Autoformat \
			net/p5-Net-Twitter-Lite \
			net/p5-AnyEvent-IRC
LIB_DEPENDS =		devel/glib2

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

TEST_TARGET =		check

.include <bsd.port.mk>
