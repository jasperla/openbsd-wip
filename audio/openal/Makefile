# $OpenBSD$

ONLY_FOR_ARCHS =	${LLVM_ARCHS}

COMMENT =		cross-platform 3D audio API

EPOCH =			0
DISTNAME =		openal-soft-1.17.1
PKGNAME =		openal-1.17.1
CATEGORIES =		audio
SHARED_LIBS =		openal	2.3

HOMEPAGE =		http://kcat.strangesoft.net/openal.html

MASTER_SITES =		http://kcat.strangesoft.net/openal-releases/
EXTRACT_SUFX =		.tar.bz2

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread sndio

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=OpenBSD \
			-DALSOFT_SYSCONFDIR=${SYSCONFDIR} \
			-DALSOFT_CONFIG_DESTINATION=share/examples/openal \
			-DALSOFT_DLOPEN=Off \
			-DALSOFT_UTILS=On \
			-DALSOFT_EXAMPLES=Off \
			-DALSOFT_CPUEXT_SSE=Off \
			-DALSOFT_CPUEXT_SSE2=Off \
			-DALSOFT_CPUEXT_SSE3=Off \
			-DALSOFT_CPUEXT_SSE4_1=Off \
			-DALSOFT_REQUIRE_SNDIO=On \
			-DALSOFT_BACKEND_ALSA=Off \
			-DALSOFT_BACKEND_COREAUDIO=Off \
			-DALSOFT_BACKEND_DSOUND=Off \
			-DALSOFT_BACKEND_JACK=Off \
			-DALSOFT_BACKEND_MMDEVAPI=Off \
			-DALSOFT_BACKEND_OPENSL=Off \
			-DALSOFT_BACKEND_OSS=Off \
			-DALSOFT_BACKEND_PORTAUDIO=Off \
			-DALSOFT_BACKEND_PULSEAUDIO=Off \
			-DALSOFT_BACKEND_QSA=Off \
			-DALSOFT_BACKEND_SOLARIS=Off \
			-DALSOFT_BACKEND_WAVE=Off \
			-DALSOFT_BACKEND_WINMM=Off

MODULES =		devel/cmake lang/clang
MODCLANG_ARCHS = 	*
MODCLANG_LANGS = 	c c++

SEPARATE_BUILD =	Yes
NO_TEST =		Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/Alc/alcConfig.c ${WRKSRC}/alsoftrc.sample

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openal
	${INSTALL_DATA} ${WRKSRC}/alsoftrc.sample \
		${PREFIX}/share/examples/openal

.include <bsd.port.mk>
