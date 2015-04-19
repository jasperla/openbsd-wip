# $OpenBSD: Makefile.template,v 1.72 2015/04/08 17:53:19 sthen Exp $

COMMENT =		library and file format for storing and managing data

DISTNAME =		hdf5-1.8.14

SHARED_LIBS +=  hdf5	0.0 # 9.0
SHARED_LIBS +=  hdf5_hl	0.0 # 9.0


CATEGORIES =		devel math

HOMEPAGE =		http://www.hdfgroup.org/HDF5/

# "BSD-style open source license"
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m z

MASTER_SITES =		http://www.hdfgroup.org/ftp/HDF5/current/src/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
