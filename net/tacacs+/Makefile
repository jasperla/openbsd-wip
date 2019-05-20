# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT =	TACACS+ AAA service, often used with network equipment

V =		4.0.4.28
DISTNAME =	tacacs-F${V}
PKGNAME =	tacacs+-${V}
EPOCH =		0

SHARED_LIBS +=  tacacs                    1.0

CATEGORIES =	net security
HOMEPAGE =	http://www.shrubbery.net/tac_plus/
MAINTAINER =	Jan Vlach <janus@volny.cz>

# BSD style, but without fee
PERMIT_PACKAGE_CDROM =	may not sell
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += c pthread

MASTER_SITES =	ftp://ftp.shrubbery.net/pub/tac_plus/

MODULES =	lang/python
MODPY_ADJ_FILES = do_auth.py

BUILD_DEPENDS =	devel/bison

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-libwrap=no

# don't allow picking up pam
CONFIGURE_ENV =	ac_cv_lib_pam_pam_start=false \
		YACC=bison

post-install:
	${INSTALL_DATA} ${FILESDIR}/tac_plus.conf.sample ${PREFIX}/share/tacacs
	rm ${PREFIX}/bin/tac_pwd ${PREFIX}/man/man8/tac_pwd.8 # only works with des/md5 crypt

.include <bsd.port.mk>
