QT += core sql network
QT -= gui

TARGET = goldreward
CONFIG += c++11 console 64bit
CONFIG -= app_bundle

TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
        Database/MySQL.cpp \
        Network/Gamedbd.cpp \
        Network/OctetsStream.cpp \
        Protocols/GetRoleBaseArg.cpp \
        Protocols/GetRoleBaseRes.cpp \
        Server.cpp \
        Settings.cpp \
        Threads/Thread.cpp \
        Utils.cpp \
        Workers/Worker.cpp \
        main.cpp

HEADERS += \
    Database/MySQL.h \
    Models/GRoleBase.h \
    Models/GRoleForbid.h \
    Models/Quest.h \
    Network/Gamedbd.h \
    Network/Octets.h \
    Network/OctetsStream.h \
    Protocols/GetRoleBaseArg.h \
    Protocols/GetRoleBaseRes.h \
    Server.h \
    Settings.h \
    Threads/Thread.h \
    Utils.h \
    Workers/Worker.h

QMAKE_CXXFLAGS += -std=c++11
QMAKE_LFLAGS += -static-libstdc++ -static-libgcc -static 

CONFIG(32bit) {
    LIBS += -L$$PWD/../../../../opt/Qt/mysql/x32/lib/libmysqlclient.a
}
CONFIG(64bit) {
    LIBS += -L$$PWD/../../../../opt/Qt/mysql/x64/lib/libmysqlclient.a
}