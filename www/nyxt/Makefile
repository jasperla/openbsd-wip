# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $
#
#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#COMES_WITH =		???
#BROKEN =		reason
#		|----------------------------------------------------------|
COMMENT =	keyboard-oriented web browser extensible with lisp
# COMMENT-foo =	???	for multi packages
#MODPY_EGG_VERSION =	???
#MODGO_MODNAME =	github.com/test/app
#MODGO_VERSION =	0.1.1
#V =		2.0.0
#DISTNAME =	nyxt-${V}
#PKGNAME =	???
#PKGNAME-foo =	???	for multi packages
GH_ACCOUNT =	atlas-engineer
GH_PROJECT =	nyxt
GH_TAGNAME =	2.0.0
#GH_COMMIT =	abab123456789abacafeabab123123b1e4ble4bl
#SHARED_LIBS =	???	0.0
CATEGORIES =	www
HOMEPAGE =	https://nyxt.atlas.engineer/
MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>
# CC BY-SA BSD
PERMIT_PACKAGE =	Yes
#PERMIT_DISTFILES =	Yes | Reason if No
#WANTLIB =		???
MASTER_SITES0 =		https://github.com/
#MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=subdir/}

#MASTER_SITES =		${MASTER_SITE_foo:=subdir/}
SRCS =	quicklisp-client-{quicklisp/quicklisp-client/archive/}b525ae5a4db984bf96a33b9c7379b3b13a4edd98
DEPS =	cl-webkit-{joachifm/cl-webkit/archive/}29aeb74d854bd2ac52959ef3d793389d238636c5 \
	Cluffer-{robert-strandh/cluffer/archive/}4aad29c276a58a593064e79972ee4d77cae0af4a \
	cl-cffi-gtk-{Ferada/cl-cffi-gtk/archive/}e9a46df65995d9a16e6c8dbdc1e09b775eb4a966 \
	quri-{fukamachi/quri/archive/}d09ebb553f4a51e5d52036312ba4ee5b67c79cd0
DISTFILES =		${DISTNAME}.tar.gz \
			${SRCS:C/$/.tar.gz:0/} \
			${DEPS:C/$/.tar.gz:0/}
#EXTRACT_ONLY =		???
#EXTRACT_SUFX =		.tar.bz2
#FIX_CRLF_FILES =	???
#DIST_SUBDIR =		???
#PATCHFILES =		???
#PATCH_DIST_STRIP =	-p0
#COMPILER =		base-clang ports-gcc base-gcc
#COMPILER =		base-clang ports-gcc
#COMPILER_LANGS =	c
#MODULES =		???
#MODPY_PI =		Yes
#MODPY_SETUPTOOLS =	Yes
#MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
#MODGO_MODULES =	modulename version
#MODGO_MODFILES =	modulename version
BUILD_DEPENDS =		lang/sbcl
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???
#MAKE_FLAGS =		???
MAKE_ENV =		SBCL_HOME=/tmp
#FAKE_FLAGS =		???
#TEST_FLAGS =		???
#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)
#SEPARATE_BUILD =	flavored (distinct flavors may share a common WRKSRC)
USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL=		gnu
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
#CONFIGURE_ARGS =	???
#CONFIGURE_ENV =	???
# DEBUG_CONFIGURE_ARGS =	???
# DEBUG_PACKAGES = ${BUILD_PACKAGES}
#AUTOCONF_VERSION =	??? (defaults to 2.13)
#AUTOMAKE_VERSION =	??? (defaults to 1.4)
#MODGNU_CONFIG_GUESS_DIRS = ??? (defaults to ${WRKSRC})
#IS_INTERACTIVE =		Yes
#TEST_IS_INTERACTIVE =		Yes
#FLAVORS =	1 2 3 a b
#FLAVOR ?=
#CHOICE = ${FLAVOR:Na:Nb}
# check that CHOICE is 1 OR 2 OR 3, or error out
#.if ${CHOICE} == "1"
# code for 1
#.elif ${CHOICE} == "2"
# code for 2
#.elif ${CHOICE} == "3"
# code for 3
#.else
#ERRORS += "Fatal: Conflicting flavor: ${FLAVOR}"
#.endif
# check for switches
#.if ${FLAVOR:Ma}
# code for a
#.endif
#.if ${FLAVOR:Mb}
# code for b
#.endif
#NO_BUILD =		Yes
#NO_TEST =		Yes
#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}
#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???
#BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
#			${MODGNU_AUTOMAKE_DEPENDS} \
#			devel/libtool
#do-gen:
#	cd ${WRKSRC}; ${AUTOCONF_ENV} ./autogen.sh
post-extract:
	mv ${WRKDIR}/${SRCS:C/{.*}//}/* ${WRKSRC}/_build/quicklisp-client
	mkdir ${WRKSRC}/_build/submodules/quri
.for dep in ${DEPS:C/{.*}//}
	cd ${WRKDIR}/${dep} && pax -rw . ${WRKSRC}/_build/submodules/${dep:L:C/-[a-z0-9]{40}//}
.endfor
.include <bsd.port.mk>
