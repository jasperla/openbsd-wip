# $OpenBSD$

COMMENT =	tool to upload, retrieve and manage data in Amazon S3

MODPY_EGG_VERSION = 0.9.9
DISTNAME =	s3cmd-${MODPY_EGG_VERSION}
CATEGORIES =	sysutils net

HOMEPAGE =	http://s3tools.org/s3cmd
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=s3tools/}
			
MAINTAINER =	Bruno Bigras <bruno@burnbox.net>

# GPLv2
PERMIT_PACKAGE_CDROM =  Yes

MODULES =	lang/python
MAKE_ENV +=	S3CMD_INSTPATH_MAN=man \
		S3CMD_INSTPATH_DOC=share/doc

NO_TEST =	Yes

.include <bsd.port.mk>
