#	$ OpenBSD: $

COMMENT =		WebRTC build for Telegram

GH_ACCOUNT =		desktop-app
GH_PROJECT =		tg_owt
# no releases or tags, use latest master
GH_COMMIT =		d5c3d43b959c7e9e7d8004b9b7fdadd12ce7d589
DISTNAME =		${GH_PROJECT}-20211207
CATEGORIES =		net

# Fetch SUPDISTFILES as per ${WRKSRC}/.gitmodules
#
# clone of https://chromium.googlesource.com/libyuv/libyuv which has
# no releases or tags, main/master/stable/<commit> tarballs are *unstable*;
# use GitHub fork with stable tarballs;
# no releases or tags, use latest master
LIBYUV_COMMIT =		742791f13a8ca9e8a297c323699aff8af30a360b
LIBYUV_SUPNAME =	libyuv-20210205-${LIBYUV_COMMIT:C/(........).*/\1/}
SUPDISTFILES +=		${LIBYUV_SUPNAME}{${LIBYUV_COMMIT}}${EXTRACT_SUFX}:0
MASTER_SITES0 =		https://github.com/HenryHu/libyuv/archive/

# mirror of https://chromium.googlesource.com/webm/libvpx which has
# no releases but tags, main/master/<commit> tarballs are *unstable*;
# use GitHub mirror with stable tarballs;
# no releases, use latest tag
LIBVPX_TAGNAME =	v1.11.0
# just like multimedia/libvpx
LIBVPX_SUPNAME =	libvpx-${LIBVPX_TAGNAME:S,v,,}
SUPDISTFILES +=		${LIBVPX_SUPNAME}{${LIBVPX_TAGNAME}}${EXTRACT_SUFX}:1
MASTER_SITES1 =		https://github.com/webmproject/libvpx/archive/refs/tags/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

# XXX requires __atomic builtins (copied from multimedia/vpx)
# -std=gnu++20
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS +=	\
			devel/yasm \
			multimedia/libv4l,-compat

LIB_DEPENDS =		\
			audio/opus \
			graphics/ffmpeg \
			graphics/jpeg \

# XXX cmake checks for it despite requiring git-submoduled version;
# libvpx is a transitive dependency through ffmpeg, anyway
LIB_DEPENDS +=		multimedia/libvpx>=1.10.0


CONFIGURE_ARGS =	\
			-DBUILD_SHARED_LIBS=OFF \
			-DTG_OWT_BUILD_AUDIO_BACKENDS=OFF \
			-DTG_OWT_USE_PIPEWIRE=OFF \


post-extract:
	# extract git submodules, see ${WRKSRC}/.gitmodules
	${TAR} -xzf ${FULLDISTDIR}/${LIBYUV_SUPNAME}${EXTRACT_SUFX} \
	    -C ${WRKSRC}/src/third_party/libyuv/ \
	    -s ,libyuv-${LIBYUV_COMMIT}/,,
	${TAR} -xzf ${FULLDISTDIR}/${LIBVPX_SUPNAME}${EXTRACT_SUFX} \
	    -C ${WRKSRC}/src/third_party/libvpx/source/libvpx/ \
	    -s ,${LIBVPX_SUPNAME}/,,

.include <bsd.port.mk>
