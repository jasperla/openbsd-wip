# $OpenBSD: Makefile,v 1.173 2019/04/24 16:26:54 sthen Exp $

DPB_PROPERTIES =parallel

COMMENT =	portable build system

VER =		3.14.5
EPOCH =		0
DISTNAME =	cmake-${VER}
CATEGORIES =	devel

HOMEPAGE =	https://www.cmake.org/

MASTER_SITES =	${HOMEPAGE}files/v${VER:R}/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} archive c curl curses expat form
WANTLIB += jsoncpp m rhash uv z

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS +=	devel/ninja>=1.5.1 \
			textproc/py-sphinx>=1.4 \

LIB_DEPENDS =		archivers/libarchive \
			devel/libuv \
			devel/jsoncpp \
			net/curl \
			security/rhash

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS =	--datadir=share/cmake \
			--docdir=share/doc/cmake \
			--mandir=man \
			--no-qt-gui \
			--parallel=${MAKE_JOBS} \
			--prefix=${PREFIX} \
			--sphinx-build=${LOCALBASE}/bin/sphinx-build \
			--sphinx-html \
			--sphinx-man \
			--system-libs \
			--verbose

CONFIGURE_ENV +=	MAKE=${MAKE_PROGRAM}

MAKE_FLAGS +=		VERBOSE=1

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	Yes

TEST_TARGET =		test

TEST_DEPENDS +=		devel/git

SUBST_FILES =	${WRKSRC}/Source/cmLocalGenerator.cxx \
		${WRKSRC}/Source/CPack/cmCPackGenerator.cxx \
		${WRKSRC}/bootstrap

post-patch:
	(find ${WRKSRC}/Modules -name "*.cmake" -print0; \
	find ${WRKSRC}/Tests -name "CMakeLists.txt" -print0) | \
	xargs -0 perl -e 's,/usr/local,${LOCALBASE},g; \
	s,/usr/X11R6,${LOCALBASE},g'
	perl -e 's,/usr/local,${LOCALBASE},g' \
		${SUBST_FILES}
	perl -e 's,/usr/include,${LOCALBASE}/include,' \
		${WRKSRC}/Modules/FindDCMTK.cmake \
	# Use system jsoncpp
	rm -rf ${WRKSRC}/Utilities/cmjsoncpp
	find ${WRKSRC}/Source  -type f -name '*.cxx' -or -name '*.h' \
		-exec sed -i 's,cm_jsoncpp_,jsoncpp/json/,g' {} +; \
	find ${WRKSRC}/Utilities -type f -name '*.h' \
		-exec sed -i 's,cmjsoncpp/include/json/,jsoncpp/json/,g' {} +;

pre-configure:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/Modules/
	(find ${WRKSRC}/Modules -name "*.cmake" -print0; \
	find ${WRKSRC}/Tests -name "CMakeLists.txt" -print0) | \
	xargs -0 ${SUBST_CMD}
	${SUBST_CMD} ${SUBST_FILES}

do-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ninja -v -j \
		${MAKE_JOBS} ${ALL_TARGET}

do-install:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${FAKE_SETUP} ninja -v -j ${MAKE_JOBS} ${FAKE_TARGET}

do-test:
	cd ${WRKBUILD} && exec ${SETENV} ${ALL_TEST_ENV} ninja -v -j \
		${MAKE_JOBS} ${TEST_FLAGS} ${TEST_TARGET}

post-install:
	@find ${WRKINST}${LOCALBASE} \( -name "*.bak" -o -name "*.orig" -o -name "*.beforesubst" \) -exec rm {} \;

.include <bsd.port.mk>
