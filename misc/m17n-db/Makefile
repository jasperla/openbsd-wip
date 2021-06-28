# $OpenBSD: Makefile,v 1.00 2018/12/06 15:00:06 ecb Exp $

COMMENT = 		multilingual text processing library - database
V = 1.8.0
DISTNAME =		m17n-db-${V}

CATEGORIES = 		misc

HOMEPAGE =		https://www.nongnu.org/m17n/

MAINTAINER =		Eric Brown <brown@fastmail.com>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.savannah.gnu.org/releases/m17n/
MASTER_SITES0 =		${MASTER_SITE_GNU:=glibc/}

DISTFILES = ${DISTNAME}${EXTRACT_SUFX}
# Requires charmaps from glibc source
GLIBC_VERSION = 2.28
DISTFILES +=	glibc-${GLIBC_VERSION}${EXTRACT_SUFX}:0

BUILD_DEPENDS +=	devel/gettext-tools>=0.19.8.1

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS += --with-charmaps="${WRKSRC}/../glibc-${GLIBC_VERSION}/localedata/charmaps"

NO_TEST =		Yes

.include <bsd.port.mk>
