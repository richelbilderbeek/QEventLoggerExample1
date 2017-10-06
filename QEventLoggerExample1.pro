# C++14
CONFIG += c++11
QMAKE_CXXFLAGS += -std=c++11

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

# Prevent Qt for failing with this error:
# qrc_[*].cpp:400:44: error: ‘qInitResources_[*]__init_variable__’ defined but not used
# [*]: the resource filename
QMAKE_CXXFLAGS += -Wno-unused-variable
