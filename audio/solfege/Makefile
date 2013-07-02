# $OpenBSD$

COMMENT =	solfege and ear training program
DISTNAME =	solfege-3.22.0
CATEGORIES =	audio x11

HOMEPAGE =	http://www.solfege.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=solfege/}

MODULES =	devel/gettext \
		lang/python

BUILD_DEPENDS =	print/lilypond,-main \
		sysutils/coreutils \
		x11/py-gtk2

RUN_DEPENDS =	audio/lame \
		audio/mpg123 \
		timidity-*|fluidsynth-*:audio/timidity \
		audio/vorbis-tools \
		devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

USE_GMAKE =	Yes

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/solfege

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,cp,${LOCALBASE}/bin/gcp,g" ${WRKSRC}/Makefile.in

pre-configure:
	cd ${WRKSRC} && ${SUBST_CMD} default.config run-solfege.py.in && \
		perl -pi -e "s,/bin/bash,/bin/sh,g" \
		${WRKSRC}/exercises/standard/lesson-files/bin/csound-play-harmonic-interval.sh

.include <bsd.port.mk>
