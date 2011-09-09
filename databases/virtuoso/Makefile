# $OpenBSD$

#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#SHARED_ONLY =		???
#COMES_WITH =		???
#BROKEN =		reason

COMMENT =	object-relational SQL database
V =		6.1.3
DISTNAME =	virtuoso-opensource-$V
PKGNAME =	virtuoso-$V

CATEGORIES =	databases
HOMEPAGE =	http://www.openlinksw.com/

# SHARED_LIBS =	???

#MAINTAINER =		???

# GPLv2, plus some more rights given
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c fl m wbxml2

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=virtuoso/virtuoso/$V/}

BUILD_DEPENDS =		devel/bison \
			devel/flex \
			lang/gawk

LIB_DEPENDS =		devel/libwbxml

#USE_GROFF =		Yes
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--localstatedir=/var/virtuoso \
			--disable-hslookup

CONFIGURE_ENV =		FLEX="${LOCALBASE}/bin/gflex" \
			LEX="${LOCALBASE}/bin/gflex" \
			YACC="${LOCALBASE}/bin/bison -y" \
			CFLAGS="${CFLAGS}"

COPTS =			-I${LOCALBASE}/include/wbxml \
			-L${LOCALBASE}/lib

# Disable system cache, or configure will pickup flex from base system
CONFIG_SITE =

# for gnu stuff
AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.9

#REGRESS_IS_INTERACTIVE =	Yes
#REGRESS_TARGET =	check

#post-patch:
#	${SUBST_CMD} ${WRKSRC}/configure.in

.include <bsd.port.mk>
