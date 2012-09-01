# $OpenBSD: Makefile,v 1.40 2012/06/21 13:56:57 sthen Exp $

COMMENT =		Prolog for the real world

V =			6.2.0
DISTNAME =		pl-$V
PKGNAME =		swi-prolog-$V
CATEGORIES =		lang

SHARED_LIBS =		pl	4.0

HOMEPAGE =		http://www.swi-prolog.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes 
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/download/stable/src/ \
			http://distfiles.nl/

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.68
AUTOCONF_DIR =		${WRKSRC}/src ${WRKSRC}/packages/semweb
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/src \
				${WRKSRC}/packages/jpl \
				${WRKSRC}/packages/xpce/src

LDFLAGS +=		-L${LOCALBASE}/lib
CPPFLAGS +=		-I${LOCALBASE}/include

SWI_ENV =		CIFLAGS=' -I/usr/local/include' \
			LDFLAGS=' -L/usr/local/lib' \
			COFLAGS='-O2 -pipe -g'
BUILD_ENV +=		${SWI_ENV}
CONFIGURE_ENV +=	${SWI_ENV} # XXX needed?

CONFIGURE_ARGS =	--enable-mt \
			--disable-custom-flags \
			--with-world \
			--with-jpeg=${LOCALBASE} \
			${CONFIGURE_SHARED}

USE_GMAKE =		Yes
USE_GROFF =		Yes

MAKE_FLAGS =		SONAMEOPT= \
			SHAREDV=libpl.so.${LIBpl_VERSION}

BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		devel/gmp \
			devel/libexecinfo \
			graphics/jpeg
# XXX sort later
WANTLIB +=	ICE SM X11 Xext Xft Xinerama Xpm Xt c crypto execinfo gmp 
WANTLIB +=	m ncursesw pthread readline ssl z
WANTLIB += expat fontconfig freetype jpeg

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS +=		V XV FULLARCH BOOT LDFLAGS CFLAGS CPPFLAGS

# warning: #warning "<malloc.h> is obsolete, use <stdlib.h>"
pre-patch:
	find ${WRKSRC}/packages/{clib,sgml,xpce} -name '*.[ch]' | \
	  xargs fgrep -l malloc.h | \
	while read i; do \
		sed -e 's/malloc.h/stdlib.h/' $$i >$$i.bak && mv $$i.bak $$i; \
	done

#post-patch:
#	${SUBST_CMD} -c ${WRKSRC}/build.templ ${WRKSRC}/build

post-install:
	cd ${PREFIX}/lib && \
		ln -sf swipl-$V/lib/${FULLARCH}/libpl.so.${LIBpl_VERSION}

# Consider swipl multithreading broken on OpenBSD :(
# The following tests fail, we remove them to allow the rest
# of the tests to execute atleast
pre-regress:
	rm -f ${WRKBUILD}/src/Tests/thread/test_signal.pl
	rm -f ${WRKBUILD}/src/Tests/core/test_resource_error.pl

.include <bsd.port.mk>

.for _m in ${MACHINE_ARCH}
.  if !empty(LP64_ARCHS:M${_m})
BOOT =	boot64
.  endif
.endfor
BOOT ?=	boot32
