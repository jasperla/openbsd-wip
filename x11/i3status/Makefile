# $OpenBSD$

COMMENT=		generate a statusbar for use with i3/xmobar/dzen2

# git snapshot as of 2011-04-08
DISTNAME=		i3status-2.4.0.1
CATEGORIES=		x11 sysutils

HOMEPAGE=		http://i3wm.org/i3status

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://distfiles.nl/

WANTLIB += c confuse yajl

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/asciidoc
LIB_DEPENDS=		devel/libconfuse \
			devel/libyajl

NO_REGRESS=		Yes

# XXX: Optimizing results in seg. faults on at least amd64.
CFLAGS+=		-O0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/i3status ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/i3status
	${INSTALL_DATA} ${WRKSRC}/i3status.conf \
		${PREFIX}/share/examples/i3status/
	${INSTALL_MAN} ${WRKSRC}/man/i3status.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
