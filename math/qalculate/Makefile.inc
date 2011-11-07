# $OpenBSD$

V ?=			0.9.7
CATEGORIES +=		math devel
HOMEPAGE ?=		http://qalculate.sourceforge.net/
VMEM_WARNING ?=		Yes

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES ?=		${MASTER_SITE_SOURCEFORGE:=qalculate/}

MODULES +=		devel/gettext

BUILD_DEPENDS +=	textproc/p5-XML-Parser

USE_LIBTOOL ?=		Yes
CONFIGURE_STYLE ?=	gnu autoconf automake
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
COPTS +=		-I${WRKSRC} -I${LOCALBASE}/include \
			-L${LOCALBASE}/lib
AUTOCONF_VERSION ?=	2.67
AUTOMAKE_VERSION ?=	1.11

SEPARATE_BUILD ?=	simple

# Package puts part of documentation in share/doc/$(pkgname)-$(pkgversion),
# and "make update-plist" thinks about it as about ${FULLPKGNAME}.
# This will break after next REVISION update, so change it to more
# logical here ${DISTNAME}.
SUBST_VARS +=		DISTNAME

# This, and overriding AUTOMAKE_VERSION is needed beacuse
# Makefile.in in docs/reference/ is broken otherwise.
# Adapted from audio/xmms port
post-patch:
.for dir in $${WRKSRC}
	cd ${dir} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${dir} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${dir} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
.endfor
