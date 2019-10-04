# $OpenBSD: Makefile,v 1.8 2019/05/04 20:13:37 bket Exp $

COMMENT =	tool for collecting host based state information

DISTNAME =	velociraptor-0.3.4

CATEGORIES =	sysutils

HOMEPAGE =	https://www.velocidex.com/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

#MODULES =	lang/go lang/python
MODULES =	lang/go
MODGO_TYPE =	bin

#MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

NO_TEST =	Yes

BUILD_DEPENDS =	devel/fileb0x security/yara/main
#RUN_DEPENDS =	devel/py-colorama,python3 \
#		security/dante \
#		www/w3m

#MAKE_FLAGS =	PREFIX=${PREFIX}

#ALL_TARGET =	github.com/Velocidex/velociraptor
ALL_TARGET =	www.velocidex.com/golang/velociraptor

MODGO_LDFLAGS += -X "www.velocidex.com/golang/velociraptor/config.build_time=" \
		 -X "www.velocidex.com/golang/velociraptor/config.commit_hash=2cd9c3e9774624ad3e8809e68909978d320b42e6"

#USE_GMAKE =	Yes

do-build:
	cd ${WRKSRC} && ${MAKE_FLAGS} ${MAKE_PROGRAM}
	#cd ${WRKSRC} && ${MODGO_BUILD_CMD} -tags release,server_vql ./bin/

#do-install:
#	cd ${WRKSRC} && ${MAKE_ENV} MANDIR=${PREFIX}/man \
#		${MAKE_PROGRAM} install
#
#post-install:
#	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
#		${PREFIX}/share/aerc/filters/*.py

.include <bsd.port.mk>
