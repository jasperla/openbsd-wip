# $OpenBSD$

COMMENT =		data recovery tool and decompressor for lzip files

V =			1.14
DISTNAME =		lziprecover-${V}

HOMEPAGE =		http://lzip.nongnu.org/lziprecover.html

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

# Upstream only released a tarball compressed with lzip, he will release also a
# .tar.gz for the next version. The distfile of this port is a tarball
# generated manually from the original.
MASTER_SITES =		http://download.tuxfamily.org/jod/archivers/lzip/ \
			ftp://download.tuxfamily.org/jod/archivers/lzip/

.include <bsd.port.mk>
