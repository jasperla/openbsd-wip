# $OpenBSD$

COMMENT =	DVI to plain text translator
DISTNAME =	catdvi-0.14
CATEGORIES =	print textproc
HOMEPAGE =	http://catdvi.sourceforge.net/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=catdvi/}

WANTLIB += c kpathsea

LIB_DEPENDS =		print/texlive/base

FAKE_FLAGS =		bindir="${DESTDIR}${PREFIX}/bin" \
			mandir="${DESTDIR}${PREFIX}/man"

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-kpathsea-prefix="${LOCALBASE}"

MAKE_FILE =		GNUmakefile
ALL_TARGET =		catdvi

# This port has a bunch of test DVIs without reference render, which is not
# really a testing framework to be taken seriously
NO_TEST =		Yes

.include <bsd.port.mk>
