# $OpenBSD$

COMMENT-main=	fast, light and extensible chat client
COMMENT-lua=	Lua bindings for weechat
COMMENT-python=	Python bindings for weechat
COMMENT-ruby=	Ruby bindings for weechat
COMMENT-tcl=	Tcl bindings for weechat

V=		0.3.6
DISTNAME=	weechat-${V}

PKGNAME-main=	weechat-${V}
PKGNAME-lua=	weechat-lua-${V}
PKGNAME-python=	weechat-python-${V}
PKGNAME-ruby=	weechat-ruby-${V}
PKGNAME-tcl=	weechat-tcl-${V}

CATEGORIES=	net

HOMEPAGE=	http://www.weechat.org/

SHARED_ONLY=	Yes

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/src/

MULTI_PACKAGES=	-main -lua -python -ruby -tcl

WANTLIB-main=	c m ncursesw perl pthread util gcrypt gnutls gpg-error iconv intl

WANTLIB-lua=	${MODLUA_WANTLIB}
WANTLIB-python=	${MODPY_WANTLIB}
WANTLIB-ruby=	${MODRUBY_WANTLIB}
WANTLIB-tcl=	${MODTCL_WANTLIB}

MODULES=	devel/cmake \
		devel/gettext \
		lang/lua \
		lang/python \
		lang/ruby \
		lang/tcl

MODLUA_RUNDEP=	No
MODPY_RUNDEP=	No
MODRUBY_RUNDEP=	No

LIB_DEPENDS=	security/libgcrypt \
		security/gnutls \
		security/libgpg-error

LIB_DEPENDS-lua=	${MODLUA_LIB_DEPENDS}
RUN_DEPENDS-lua=	${MODLUA_RUN_DEPENDS}

LIB_DEPENDS-python=	${MODPY_LIB_DEPENDS}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

LIB_DEPENDS-ruby=	${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}

LIB_DEPENDS-tcl=	${MODTCL_LIB_DEPENDS}
RUN_DEPENDS-tcl=	${MODTCL_RUN_DEPENDS}

CONFIGURE_ARGS+=-DENABLE_ASPELL=no \
		-DENABLE_RUBY=yes \
		-DENABLE_LUA=yes \
		-DENABLE_TCL=yes \
		-DENABLE_PYTHON=yes \
		-DHAVE_BACKTRACE=no

post-install:
		$(INSTALL_DATA_DIR) ${PREFIX}/share/doc/weechat
		$(INSTALL_DATA) $(WRKSRC)/doc/en/weechat_faq.en.txt ${PREFIX}/share/doc/weechat/faq.txt
		$(INSTALL_DATA) $(WRKSRC)/doc/en/weechat_plugin_api.en.txt ${PREFIX}/share/doc/weechat/plugin_api.txt
		$(INSTALL_DATA) $(WRKSRC)/doc/en/weechat_quickstart.en.txt ${PREFIX}/share/doc/weechat/quickstart.txt
		$(INSTALL_DATA) $(WRKSRC)/doc/en/weechat_scripting.en.txt ${PREFIX}/share/doc/weechat/scripting.txt
		$(INSTALL_DATA) $(WRKSRC)/doc/en/weechat_user.en.txt ${PREFIX}/share/doc/weechat/user_guide.txtt

NO_REGRESS=	Yes

.include <bsd.port.mk>
