# $OpenBSD$

COMMENT =		mount GNUnet directories via FUSE

DISTNAME =		gnunet-fuse-$V

WANTLIB += c fuse gnunetfs gnunetutil pthread

MODULES =		devel/gettext
LIB_DEPENDS =		net/gnunet/base

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
