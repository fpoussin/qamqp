QAMQP_VERSION = 0.5.0

isEmpty(QAMQP_LIBRARY_TYPE) {
    QAMQP_LIBRARY_TYPE = shared
}

QT += network
QAMQP_INCLUDEPATH = $${PWD}/src
CONFIG(debug, debug|release){
    QAMQP_LIBS = -lQt5Amqpd
} else {
    QAMQP_LIBS = -lQt5Amqp
}
contains(QAMQP_LIBRARY_TYPE, staticlib) {
    DEFINES += QAMQP_STATIC
} else {
    DEFINES += QAMQP_SHARED
}

isEmpty(PREFIX) {
    unix {
        PREFIX = /usr
    } else {
        PREFIX = $$[QT_INSTALL_PREFIX]
    }
}
isEmpty(LIBDIR) {
    LIBDIR = lib
}
