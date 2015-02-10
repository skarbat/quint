
# Qmake Project file : quint

TEMPLATE = app
TARGET = quint
INCLUDEPATH += .

# Input
HEADERS += codemodel.h quintview.h
SOURCES += codemodel.cpp main.cpp quintview.cpp

QT += quick
