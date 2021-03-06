#-------------------------------------------------
#
# Project created by QtCreator 2018-11-23T10:34:54
#
#-------------------------------------------------

QT       += core gui
QT       += charts
QT       += mqtt

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = IoTProject
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

QMAKE_CXXFLAGS += -Wall -std=c++11 -I/usr/local/include
QMAKE_LIBS += -L/usr/local/lib

SOURCES += \
        main.cpp \
        mainwindow.cpp \
   # dialog.cpp \
    chartwindow.cpp \
    datachart.cpp

HEADERS += \
        mainwindow.h \
    json.hpp \
    #dialog.h \
    chartwindow.h \
    datachart.h \
    json.hpp

FORMS += \
        mainwindow.ui \
    #dialog.ui \
    chartwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

#STATECHARTS +=

#DISTFILES +=

#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../../qtmqtt-5.11.2/build/lib/release/ -lQtMqtt
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../../qtmqtt-5.11.2/build/lib/debug/ -lQtMqtt
#else:mac: LIBS += -F$$PWD/../../../../../qtmqtt-5.11.2/build/lib/ -framework QtMqtt
#else:unix: LIBS += -L$$PWD/../../../../../qtmqtt-5.11.2/build/lib/ -lQtMqtt

#INCLUDEPATH += $$PWD/../../../../../qtmqtt-5.11.2/build/lib/QtMqtt.framework
#DEPENDPATH += $$PWD/../../../../../qtmqtt-5.11.2/build/lib/QtMqtt.framework
