# $OpenBSD$

COMMENT =		convert ASCII text to man page
DISTNAME =		txt2man-1.5.6
CATEGORIES =		textproc
HOMEPAGE =		http://mvertes.free.fr/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE:=download/}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		archivers/bzip2 \
			lang/gawk \
			textproc/groff

.include <bsd.port.mk>
