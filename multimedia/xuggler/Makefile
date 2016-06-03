# $OpenBSD$
COMMENT =		FFmpeg wrapper for Java
VERSION =		5.6beta
PKGNAME =		xuggler-${VERSION}

CATEGORIES =		devel java multimedia
HOMEPAGE =		http://www.xuggle.com/xuggler
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

DIST_SUBDIR =	xuggle
MASTER_SITES =	https://github.com/grayed/xuggle-xuggler/archive/
DISTFILES =	${VERSION}.tar.gz

IVY_REPO_DIR =	${PORTHOME}/.m2/repository
JAVA_DEPS =	0 http://xuggle.googlecode.com/svn/trunk/repo/share/java/ \
		xuggle		xuggle-utils	1.22 \
		1 http://repo1.maven.org/maven2/ \
		junit		junit		4.5 \
		2 http://repo1.maven.org/maven2/ \
		ch/qos/logback	logback-classic	1.0.0 \
		3 http://repo1.maven.org/maven2/ \
		ch/qos/logback	logback-core	1.0.0 \
		4 http://repo1.maven.org/maven2/ \
		ch/qos/logback	logback-parent	1.0.0 \
		5 http://repo1.maven.org/maven2/ \
		commons-cli	commons-cli	1.1 \
		6 http://repo1.maven.org/maven2/ \
		org/slf4j	slf4j-api	1.6.4 \
		7 http://repo1.maven.org/maven2/ \
		org/slf4j	slf4j-parent	1.6.4

.for _n _m _o _d _v in ${JAVA_DEPS}
MASTER_SITES${_n} =	${_m}${_o}/${_d}/${_v}/
DISTFILES +=		${_d}-${_v}.jar:${_n}
DISTFILES +=		${_d}-${_v}.pom:${_n}
EXTRACT_CASES +=	?(*/)${_d}-${_v}.jar|${_d}-${_v}.pom) \
	mkdir -p ${IVY_REPO_DIR}/${_o}/${_d}/${_v}/; \
	cp ${FULLDISTDIR}/$$archive ${IVY_REPO_DIR}/${_o}/${_d}/${_v};;
.endfor
DISTFILES :=	${DISTFILES:N*-parent-*.jar*}

MODULES =		java
MODJAVA_VER =		1.6+

LIB_DEPENDS =		graphics/ffmpeg

BUILD_DEPENDS =		devel/apache-ant>=1.7 \
			devel/doxygen>=1.5.8 \
			devel/ivy \
			devel/swig>=1.3.36 \
			devel/yasm>=0.7.2

TEST_DEPENDS =		java/junit

MAKE_ENV =		_JAVA_OPTIONS=-Duser.home=${PORTHOME} \
			XUGGLE_HOME=${TRUEPREFIX}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-captives \
			--enable-swig

CONFIGURE_ENV =		SWIG=${LOCALBASE}/bin/swig \
			XUGGLE_HOME=${PREFIX}

GNU_OS_NAME =		${ARCH}-unknown-openbsd${OSREV}
WRKDIST =		${WRKDIR}/xuggle-${PKGNAME}
WRKBUILD =		${WRKSRC}/build/native/${GNU_OS_NAME}
CONFIGURE_SCRIPT =	../../../configure
PORTHOME =		${WRKDIR}

ANT_CMD =		cd ${WRKSRC}; \
			exec env -i ${MAKE_ENV} ${LOCALBASE}/bin/ant

NATIVE_STAGE_DIR =	

post-build:
	${ANT_CMD} compile-java

# It's easier to actually install ourselves than to patch Ant config
post-install:
	${ANT_CMD} stage
.for _d in include lib
	rm -Rf ${PREFIX}/${_d}
	cp -R ${WRKSRC}/dist/stage/${GNU_OS_NAME}${TRUEPREFIX}/${_d} ${PREFIX}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/xuggler
	cp ${WRKSRC}/dist/lib/* ${PREFIX}/share/java/xuggler

do-test:
	${ANT_CMD} run-tests

.include <bsd.port.mk>
