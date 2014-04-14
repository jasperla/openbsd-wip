# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $
#SHARED_ONLY =		???

COMMENT =		kevent based inotify

DISTNAME =		libinotify-20120419

SHARED_LIBS =		inotify 0.0

CATEGORIES =		devel

#HOMEPAGE =		???	URL

#MAINTAINER =		???

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		http://ftp.vim.org/pub/ftp/os/BSD/FreeBSD/ports/local-distfiles/sunpoet/
EXTRACT_SUFX = 		.tar.xz

#MODULES =		???
BUILD_DEPENDS =		devel/libtool

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???

SEPARATE_BUILD =	Yes
#USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	automake
#CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
#CONFIGURE_ENV =	???

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

#CFLAGS =		???
#LDFLAGS =		???

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} libtoolize --force --copy
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal --force
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader -f
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake --add-missing
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf -f

.include <bsd.port.mk>
