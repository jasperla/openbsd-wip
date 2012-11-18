# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		jabber client written in TCL/TK

V =			0.11.1
DISTNAME =		tkabber-${V}

CATEGORIES =		net

HOMEPAGE =		http://tkabber.jabber.ru/

#MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPL v2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://files.jabber.ru/tkabber/
DISTFILES =		tkabber-${V}.tar.gz tkabber-plugins-${V}.tar.gz

#TODO: some dependencies should be moved to install message, packages for
#      missing dependencies should be created.
RUN_DEPENDS =		lang/tcl devel/tcllib x11/tk x11/bwidget \
			graphics/tkimg audio/snack x11/tktray x11/tkcon \
			x11/xosd
#Missing:
# * tkXwin (http://wiki.tcl.tk/tkXwin)
# * TclGPGme (http://tkabber.jabber.ru/dependencies ???)
# * TCLmore (https://gna.org/projects/tclmore/)
# * ZTCL (https://gna.org/projects/ztcl/)

NO_BUILD =		Yes
NO_REGRESS =		Yes

post-install:
	@cp -r ${WRKDIR}/tkabber-plugins-${V}/* \
		${WRKINST}/usr/local/share/tkabber/plugins/

.include <bsd.port.mk>
