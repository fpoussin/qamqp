# Prepare the example's base path and relative include/linker path
basepath = $$relative_path($$_PRO_FILE_PWD_, $$PWD)
basepath = $$dirname(basepath)

!isEmpty(basepath): basepath = $$basepath/

### Do the standard stuff

TEMPLATE = app

QT += core amqp

CONFIG += console install_ok
CONFIG -= app_bundle

target.path = $$[QT_INSTALL_EXAMPLES]/QtAmqp/$${basepath}$${TARGET}
INSTALLS += target
