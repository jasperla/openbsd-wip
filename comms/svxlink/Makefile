# $OpenBSD: Makefile.template,v 1.67 2013/07/10 15:22:23 bcallah Exp $
COMMENT =	repeater controler for ham radio
DISTNAME =	svxlink-13.07

CATEGORIES =	comms

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=svxlink/}

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	http://sourceforge.net/apps/trac/svxlink

PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/tcl

USE_GMAKE =	Yes
MAKE_ENV +=	CFLAGS+="${CFLAGS} -I${LOCALBASE}/include" \
		CXXFLAGS+="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS+="${LDFLAGS} -L${LOCALBASE}/lib"

SUBST_VARS +=	MODTCL_LIBDIR

pre-configure:
	${SUBST_CMD} ${WRKDIST}/create_config.sh

.include <bsd.port.mk>
