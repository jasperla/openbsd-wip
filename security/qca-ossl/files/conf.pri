# qconf

PREFIX = ${PREFIX}
BINDIR = ${PREFIX}/bin
INCDIR = ${PREFIX}/include
LIBDIR = ${PREFIX}/lib
DATADIR = ${PREFIX}/share

# TODO: don't need this?
# QT_PATH_PLUGINS = ${WRKINST}${MODQT4_LIBDIR}/lib/qt4/plugins
# INCLUDEPATH += ${LOCALBASE}/include

DEFINES += OSSL_097
LIBS += -lssl -lcrypto

CONFIG += release qt crypto
QT -= gui

target.path = ${WRKINST}${MODQT4_LIBDIR}/plugins/crypto
INSTALLS += target

