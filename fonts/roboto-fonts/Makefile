# $OpenBSD$

COMMENT =	Roboto is the sans-serif typeface family of Android OS
PKG_ARCH =	*
V =		20120824
DISTNAME =	androidfonts-${V}
PKGNAME =	roboto-fonts-${V}
CATEGORIES =	fonts x11
EXTRACT_SUFX =	.tar.gz

# The homepage contain an old version. The distfile is generated
# from the git repo of Android.
HOMEPAGE =	https://developer.android.com/design/style/typography.html

MAINTAINER =	Juan Francisco Cantero Hurtado <iam@juanfra.info>

# Apache 2 License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://download.tuxfamily.org/jod/fonts/roboto-fonts/

NO_BUILD =	Yes
NO_REGRESS =	Yes

INST_DIR =	${PREFIX}/lib/X11/fonts/Roboto

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKDIR}/fonts/Roboto*.ttf ${INST_DIR}

.include <bsd.port.mk>
