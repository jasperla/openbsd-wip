# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	library to move calls to Direct3D shaders to OpenGL on the fly

HG_CHANGESET =	1181		# correlates with HG_COMMIT
HG_COMMIT = 	b873f3b0f838

# This leads to the name being impossible to read.
# Find way to make name of package readable
DISTNAME =	mojoshader-${HG_COMMIT}
#PKGNAME =	mojoshader-${HG_CHANGESET}	# This didn't work for extract target

DISTFILES =	${HG_COMMIT}.tar.gz

# Should I rename distfiles since they are only ${HG_COMMIT}.tar.gz?

# for libtool- or cmake-based ports, have a look at WRKBUILD/shared_libs.log
#SHARED_LIBS =	mojoshader

CATEGORIES =	graphics

HOMEPAGE =	https://icculus.org/mojoshader/

MAINTAINER =		Thomas Frohwein <frohwein@ymail.com>

# zlib license
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB =		???

# How do I fetch from mercural repo? Or should host checkout tarball?
MASTER_SITES =		https://hg.icculus.org/icculus/mojoshader/archive/

MODULES =		devel/cmake

#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)

IS_INTERACTIVE =		No

#NO_TEST =		Yes

.include <bsd.port.mk>
