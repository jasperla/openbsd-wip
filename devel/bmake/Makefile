# $OpenBSD$

COMMENT =		NetBSD make
DISTNAME =		bmake-20140214
CATEGORIES =		devel
HOMEPAGE =		http://www.crufty.net/help/sjg/bmake.html

# BSDL (3-clause mostly)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		ftp://ftp.netbsd.org/pub/NetBSD/misc/sjg/

# avoid picking up /etc/mk.conf
MAKE_FLAGS =		MAKECONF= MANDIR=${TRUEPREFIX}/man

MAKE_ENV =		STRIP=true

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-default-sys-path=${PREFIX}/share/mk

MAKE_FILE =		makefile
WRKDIST =		${WRKDIR}/bmake

TEST_TARGET =		test

SUBST_VARS =		PREFIX

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bmake.1

.include <bsd.port.mk>
