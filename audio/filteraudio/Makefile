# $OpenBSD$

COMMENT =		easy to use audio filtering library
DISTNAME =		filteraudio-20150516
CATEGORIES =		audio
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

SHARED_LIBS +=  filteraudio               0.0

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread

GH_ACCOUNT =		irungentoo
GH_PROJECT =		filter_audio
GH_COMMIT =		612c5a102550c614e4c8f859e753ea64c0b7250c

BUILD_DEPENDS =		audio/openal

MAKE_FLAGS =		VERSION=${LIBfilteraudio_VERSION}
FAKE_FLAGS =		PREFIX="${PREFIX}" TARGET_ONLY=YES

USE_GMAKE =		Yes
TEST_IS_INTERACTIVE =	Yes

do-test:
	${CC} -g -Wall -o ${WRKBUILD}/filteraudio-test -I${LOCALBASE}/include \
		${WRKSRC}/test/playback_mic.c ${WRKBUILD}/libfilteraudio.a \
		-L${LOCALBASE}/lib -lopenal -lpthread -lm
	@echo "\n\tYou should hear your microphone input\n"
	@sleep 15 && pkill -HUP filteraudio-test &
	${WRKBUILD}/filteraudio-test

.include <bsd.port.mk>
