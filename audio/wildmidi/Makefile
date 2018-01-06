# $OpenBSD$

COMMENT =	simple software MIDI player
DISTNAME =	wildmidi-0.4.2
CATEGORIES =	audio

SHARED_LIBS +=	WildMidi                  0.0 # 2.0

HOMEPAGE =	https://www.mindwerks.net/projects/wildmidi/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Player: GPLv3+
# Library: LGPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m openal

MASTER_SITES =	https://github.com/Mindwerks/wildmidi/archive/

MODULES =	devel/cmake

LIB_DEPENDS =	audio/openal

RUN_DEPENDS =	audio/timidity

CONFIGURE_ARGS =	-DWANT_OPENAL=ON \
			-DWILDMIDI_CFG="${SYSCONFDIR}/timidity.cfg"

NO_TEST =	Yes

# GitHub tarball naming weirdness
WRKDIST =	${WRKDIR}/wildmidi-${DISTNAME}

.include <bsd.port.mk>
