COMMENT = Embeddable prototype-based language

BASENAME = Io-20111130
PKGNAME = io-20111130
DISTNAME = eradman-io-2011.11.30-40-gd1d8bac
CATEGORIES = lang
MASTER_SITES =  http://static.eradman.com/code/
DISTFILES = ${DISTNAME}.tar.gz

HOMEPAGE = http://www.iolanguage.org/
MAINTAINER = Eric Radman <ericshane@eradman.com

# BSD
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB += GL Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm drm
WANTLIB += edit event expat fontconfig freetype m pixman-1 pthread
WANTLIB += pthread-stubs readline xcb xcb-render xcb-shm z

LIB_DEPENDS = devel/libeventextra devel/pcre devel/libyajl

MODULES = devel/cmake

WRKSRC = ${WRKDIR}/eradman-io-d1d8bac
WRKBUILD = ${WRKSRC}/build

MODCMAKE_VERBOSE = No

do-regress:
	cd ${WRKBUILD} && _build/binaries/io ../libs/iovm/tests/correctness/run.io

.include <bsd.port.mk>
