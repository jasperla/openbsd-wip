# $OpenBSD$

V =			0.11.0
CATEGORIES =		devel textproc
COMMENT =		C library for handling WBXML documents
DISTNAME =		libwbxml-${V}
HOMEPAGE =		http://libwbxml.aymerick.com/

SHARED_LIBS +=		wbxml2			0.0	# 1.0

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libwbxml/libwbxml/${V}/}

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c expat

SEPARATE_BUILD =	simple
USE_LIBTOOL =		Yes

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DCHECK_FOUND=1 \
			-DWBXML_LIB_VERBOSE=ON \
			-DLIBWBXML_INCLUDE_DIR=${PREFIX}/include

.include <bsd.port.mk>
