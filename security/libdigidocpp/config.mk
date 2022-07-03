USE_CCACHE =		Yes
CCACHE_ENV +=		CCACHE_SLOPPINESS=pch_defines,time_macros,include_file_ctime,include_file_mtime
#CCACHE_ENV +=		CCACHE_BASEDIR=${WRKSRC}
