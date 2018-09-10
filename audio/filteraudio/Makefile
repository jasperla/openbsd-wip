# $OpenBSD$

COMMENT =		easy to use audio filtering library
V =			0.0.1
PKGNAME =		filteraudio-$V
CATEGORIES =		audio
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

SHARED_LIBS +=		filteraudio               0.0

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m pthread

GH_ACCOUNT =		irungentoo
GH_PROJECT =		filter_audio
GH_TAGNAME =		v$V

TEST_DEPENDS =		audio/filteraudio \
			audio/libsndfile \
			audio/portaudio-svn

MAKE_FLAGS =		VERSION=${LIBfilteraudio_VERSION}
FAKE_FLAGS =		PREFIX="${PREFIX}" TARGET_ONLY=YES

USE_GMAKE =		Yes
TEST_IS_INTERACTIVE =	Yes

do-test:
			${CC} -g -Wall -o ${WRKBUILD}/filteraudio-test -I${LOCALBASE}/include \
				${WRKSRC}/test/playback_mic.c ${WRKBUILD}/libfilteraudio.a \
				-L${LOCALBASE}/lib -lsndfile -lportaudio -lpthread -lm
			@echo "\n\tYou should hear your microphone input\n"
			${WRKBUILD}/filteraudio-test files/speech_orig.wav /tmp/filter_test.wav

.include <bsd.port.mk>
