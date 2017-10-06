# C++14
CONFIG += c++14

# Qt5
QT += core gui widgets

# main
SOURCES += main.cpp

# Dialog
SOURCES += dialog.cpp
HEADERS += dialog.h
FORMS   += dialog.ui

# QEventLogger
INCLUDEPATH += ../QEventLogger
SOURCES += ../QEventLogger/QEventLogger.cpp
HEADERS += ../QEventLogger/QEventLogger.h
