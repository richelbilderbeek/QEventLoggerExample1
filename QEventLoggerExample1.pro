QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += c++14

SOURCES += main.cpp

# Dialog
SOURCES += dialog.cpp
HEADERS += dialog.h
FORMS   += dialog.ui

# QEventLogger
INCLUDEPATH += ../QEventLogger
SOURCES += ../QEventLogger/QEventLogger.cpp
HEADERS += ../QEventLogger/QEventLogger.h
