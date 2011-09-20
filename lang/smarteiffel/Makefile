# $OpenBSD$

COMMENT=		GNU compiler for Eiffel

# SVN trunk (release 2.3 + minor changes)
DISTNAME=		smarteiffel-2.3-r9377
PKGNAME=		${DISTNAME:S/-r9377//}

CATEGORIES=		lang

HOMEPAGE=		http://smarteiffel.loria.fr/

# Compiler: GPL
# Class libraries: MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://distfiles.nl/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

PORTHOME=		${WRKDIR}

SUBST_VARS+=		CFLAGS CXXFLAGS WRKSRC

#PATH+=			${WRKSRC}/bin/
#CFLAGS

# Very evil, twisted, and someone will visit Hell for this, but it saves
# a metric buttload of patches as 'cc' or 'c++' are not supported
# compiler types.
post-extract:
	@ln -sf /usr/bin/cc ${WRKDIR}/bin/gcc
	@ln -sf /usr/bin/c++ ${WRKDIR}/bin/c++

pre-configure:
	cd ${WRKSRC}/install && \
		perl -pi -e 's,^c_compiler_options:.*,c_compiler_options: ${CFLAGS},g;' \
		    -e 's,^cpp_compiler_options:.*,cpp_compiler_options: ${CXXFLAGS},g' \
		gcc.rc
	${SUBST_CMD} ${WRKSRC}/make_release.sh \
		${WRKSRC}/work/germ/system.se \
		${WRKSRC}/work/html/site/new_libs \
		${WRKSRC}/tools/install/make_release_job_build.e

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} sh make_release.sh build plain

.include <bsd.port.mk>
