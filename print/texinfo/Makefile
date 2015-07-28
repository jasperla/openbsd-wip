# $OpenBSD$

# Based on https://marc.info/?l=openbsd-ports&m=130849683022273&w=2

COMMENT =		official documentation format of the GNU project

DISTNAME =		texinfo-6.0

CATEGORIES =		print

HOMEPAGE =		https://www.gnu.org/software/texinfo/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncurses

MASTER_SITES =		${MASTER_SITE_GNU:=texinfo/}

MODULES =		devel/gettext
BUILD_DEPENDS =		lang/gawk
# TODO: check wether this should depend on Hevea or not.
TEST_DEPENDS =		print/texlive/base

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--program-prefix=g
CONFIGURE_ENV =		ac_cv_prog_AWK=gawk

post-install:
	cd ${PREFIX}/info && for i in *.info*; do mv $$i g$$i; done

.include <bsd.port.mk>
