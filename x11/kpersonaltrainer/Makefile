# $OpenBSD$

COMMENT=		KPersonalTrainer

VERSION=		1.11
PKGNAME=		KPersonalTrainer
DISTNAME=		KPersonalTrainer-${VERSION}

CATEGORIES=		x11

HOMEPAGE = 		http://kde-apps.org/content/show.php?content=34705

MAINTAINER=		Sergey Bronnikov <estetus@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=   	http://www.kde-apps.org/CONTENT/content-files/
DISTFILES=      	34705-${DISTNAME}${EXTRACT_SUFX}

#MODKDE_FIXUP_DATADIR=   Yes

#MODGNU_CONFIG_GUESS_DIRS=       ${MODKDE_CONFIG_GUESS_DIRS}

MODULES=        	x11/kde devel/gettext

#CONFIGURE_STYLE=        autoconf
#AUTOCONF_VERSION=       2.52
#AUTOMAKE_VERSION=	1.9

CONFIGURE_ARGS+=        ${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=          LDFLAGS="${LDFLAGS} -L${LOCALBASE}/${KDE}"
USE_GMAKE=              Yes
USE_LIBTOOL =           No
PORTHOME=${WRKDIR}

CONFIGURE_ENV+=         ${MODKDE_CONFIGURE_ENV}
MAKE_ENV=               ${CONFIGURE_ENV}

MAKE_FLAGS+=            ${MODKDE_MAKE_FLAGS}

CONFIGURE_STYLE=        gnu

LIB_DEPENDS=		x11/kde/libs3

WRKDIST =             ${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
