INCLUDEPATH += $$PWD

#Define GIT Macros
GIT_VERSION = $$system(git describe --long --dirty --tags)
DEFINES += GIT_VERSION=\\\"$$GIT_VERSION\\\"

GIT_TAG = $$system(git describe --abbrev=0)
VERSION = $$replace(GIT_TAG, v,)

PRIVATE_HEADERS += \
    qamqpchannel_p.h \
    qamqpchannelhash_p.h \
    qamqpclient_p.h \
    qamqpexchange_p.h \
    qamqpframe_p.h \
    qamqpmessage_p.h \
    qamqpqueue_p.h

INSTALL_HEADERS += \
    qamqpauthenticator.h \
    qamqpchannel.h \
    qamqpclient.h \
    qamqpexchange.h \
    qamqpglobal.h \
    qamqpmessage.h \
    qamqpqueue.h \
    qamqptable.h

HEADERS += \
    $${INSTALL_HEADERS} \
    $${PRIVATE_HEADERS}

SOURCES += \
    qamqpauthenticator.cpp \
    qamqpchannel.cpp \
    qamqpchannelhash.cpp \
    qamqpclient.cpp \
    qamqpexchange.cpp \
    qamqpframe.cpp \
    qamqpmessage.cpp \
    qamqpqueue.cpp \
    qamqptable.cpp


