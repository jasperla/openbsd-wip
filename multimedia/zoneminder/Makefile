# $OpenBSD$

MULTI_PACKAGES = -main -web
COMMENT-main =	security camera DVR/NVR recorder/alarm monitor

V =		1.29.0
DISTNAME =	ZoneMinder-$V
PKGNAME =	zoneminder-$V
PKGNAME-main =	zoneminder-$V

CATEGORIES =	multimedia security

HOMEPAGE =	https://ZoneMinder.com/
MASTER_SITES =	\
	https://github.com/ZoneMinder/ZoneMinder/releases/download/v${V}/

MAINTAINER =	Ian Darwin <ian@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += avcodec avdevice avformat avutil c crypto curl gcrypt
WANTLIB += gnutls jpeg m mysqlclient pcre pthread ssl stdc++ swscale
WANTLIB += z

FLAVORS =	vlc
FLAVOR ?=

# update-plist can't handle @cwd / multiple prefixes, so because there
# are so many files, install them to a subpackage to allow it to work.
# There's also a cgi script, which *is* done via @cwd in PLIST-main.
COMMENT-web =	PHP scripts for ZoneMinder
PKGNAME-web =	zoneminder-web-$V
PREFIX-web =	/var/www
WANTLIB-web =
LIB_DEPENDS-web =
RUN_DEPENDS-web = ${MODPHP_RUN_DEPENDS} \
		lang/php/${MODPHP_VERSION},-mysql
# Override default flavouring for -web; it's not needed with the cgi
# script in -main.
FULLPKGNAME-web = zoneminder-web-$V
FULLPKGPATH-web = multimedia/zoneminder,-web

MODULES =	devel/cmake \
		lang/php
NO_TEST =	Yes
USE_NINJA =	No # XXX needs work on manpage installation for this to succeed

P5_DEPS =	archivers/p5-Archive-Zip \
		comms/p5-Device-SerialPort \
		converters/p5-DateManip \
		databases/p5-DBI \
		databases/p5-DBD-mysql \
		devel/p5-Sys-Mmap \
		mail/p5-MIME-Lite \
		mail/p5-MIME-tools \
		www/p5-libwww

RUN_DEPENDS-main = ${P5_DEPS} \
		multimedia/zoneminder,-web=$V

BUILD_DEPENDS = ${P5_DEPS} \
		textproc/py-sphinx

BUILD_DEPENDS += sysutils/polkit # XXX excise? only for systemctl wrapper

LIB_DEPENDS =	devel/pcre \
		graphics/ffmpeg \
		graphics/jpeg \
		net/curl \
		security/gnutls \
		security/libgcrypt

CONFIGURE_ARGS = -DCMAKE_VERBOSE_MAKEFILE=true \
		-DZM_PERL_MM_PARMS="NO_PACKLIST=1 NO_PERLLOCAL=1" \
		-DZM_WEB_USER=www \
		-DZM_WEB_GROUP=www \
		-DZM_CGIDIR=/var/www/cgi-bin \
		-DZM_CONFIG_DIR=${SYSCONFDIR}/zm \
		-DZM_CONTENTDIR=/var/spool/zoneminder \
		-DZM_WEBDIR=/var/www/zoneminder

# XXX try without this first; if it fails then uncomment to use shm instead of mmap
#CONFIGURE_ARGS += -DZM_NO_MMAP=true

.if ${FLAVOR:Mvlc}
LIB_DEPENDS +=	x11/vlc
WANTLIB +=	vlc
.else
CONFIGURE_ARGS += -DZM_NO_LIBVLC=true
.endif

post-patch:
	# is this needed? it already uses full path to ffmpeg.
	# sed -i -e 's,/bin:/usr/bin,/bin:/usr/bin:${LOCALBASE}/bin,g' ${WRKSRC}/scripts/*.pl.in

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlp64}
BITS=64
.else
BITS=32
.endif

pre-configure:
	sed -i 's,^our $$arch = 64;,our $$arch = ${BITS};,' \
		${WRKSRC}/scripts/ZoneMinder/lib/ZoneMinder/Memory.pm.in
	# - freebsd bktr:
	# cp ${FILESDIR}/zm_fbsd_camera.cpp ${WRKSRC}/src
	# touch ${WRKSRC}/src/zm_fbsd_camera.h
	# - also requires patching in zm_local_camera.h, and hooking into build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/zoneminder
	mv ${WRKINST}${SYSCONFDIR}/zm/zm.conf ${PREFIX}/share/examples/zoneminder
	${INSTALL_DATA} ${WRKSRC}/{INSTALL,COPYING} ${PREFIX}/share/doc/zoneminder
	rm -f ${PREFIX}/libdata/perl5/site_perl/ZoneMinder/Memory.pm.in.orig \
		${WRKINST}${PREFIX-web}/zoneminder/api/app/Config/{core,database}.php
	gunzip ${PREFIX}/man/man8/*gz

.include <bsd.port.mk>
