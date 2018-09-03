load(qt_build_config)


TARGET = QtAmqp
MODULE = amqp

QT = core network
CONFIG += $${QAMQP_LIBRARY_TYPE}

VERSION = $${QAMQP_VERSION}
win32:DESTDIR = $$OUT_PWD
macx:QMAKE_LFLAGS_SONAME = -Wl,-install_name,@rpath/

isEmpty(QAMQP_LIBRARY_TYPE) {
    QAMQP_LIBRARY_TYPE = shared
}

DEFINES += QAMQP_BUILD
contains(QAMQP_LIBRARY_TYPE, staticlib) {
    DEFINES += QAMQP_STATIC
} else {
    DEFINES += QAMQP_SHARED
    win32:QAMQP_LIBS = -lqamqp0
}

include($$PWD/src.pri)

load(qt_module)
