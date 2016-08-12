# $OpenBSD$

COMMENT =	modern, high-performance browser engine
DISTNAME =	servo-0.0.20160809
GH_ACCOUNT =	servo
GH_PROJECT =	servo
GH_COMMIT =	93004ce57999947f51067d680c6fde056741331a

CATEGORIES =	www x11

HOMEPAGE =	https://servo.org/

# MPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_RUNDEP =		No
BUILD_DEPENDS =		devel/cargo \
			devel/py-virtualenv

post-patch:
	cp ${WRKBUILD}/servobuild.example ${WRKBUILD}/.servobuild

do-build:
	cd ${WRKBUILD} && ${MODPY_BIN} mach build --release

.include <bsd.port.mk>
