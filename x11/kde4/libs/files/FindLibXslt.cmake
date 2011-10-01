# - Find libxslt and xsltproc
# $OpenBSD$
# Relies on system FindLibXslt.cmake, but provides an additional variables:
#
# LIBXSLT_XSLTPROC_EXECUTABLE
#    Path to xsltproc executable
#
# XSLTPROC_EXECUTABLE
#    Legacy alias to LIBXSLT_XSLTPROC_EXECUTABLE
#

INCLUDE(${LOCALBASE}/share/cmake/Modules/FindLibXslt.cmake)

FIND_PROGRAM(LIBXSLT_XSLTPROC_EXECUTABLE xsltproc)

# Some programs in KDE still use this
SET(XSLTPROC_EXECUTABLE ${LIBXSLT_XSLTPROC_EXECUTABLE})

