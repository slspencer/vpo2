# ADD TO EACH PATH $$PWD VARIABLE!!!!!!
# This need for corect working file translations.pro

SOURCES += \
    $$PWD/def.cpp \
    $$PWD/vsettings.cpp \
    $$PWD/vabstractapplication.cpp \
    $$PWD/projectversion.cpp \
    $$PWD/vcommonsettings.cpp \
    $$PWD/vtapesettings.cpp \
    $$PWD/commandoptions.cpp \
    $$PWD/qxtcsvmodel.cpp \
    $$PWD/vtablesearch.cpp \
    $$PWD/abstracttest.cpp

win32-msvc*:SOURCES += $$PWD/stable.cpp

HEADERS += \
    $$PWD/stable.h \
    $$PWD/def.h \
    $$PWD/logging.h \
    $$PWD/vmath.h \
    $$PWD/vsettings.h \
    $$PWD/vabstractapplication.h \
    $$PWD/projectversion.h \
    $$PWD/vcommonsettings.h \
    $$PWD/vtapesettings.h \
    $$PWD/debugbreak.h \
    $$PWD/vlockguard.h \
    $$PWD/vsysexits.h \
    $$PWD/commandoptions.h \
    $$PWD/qxtcsvmodel.h \
    $$PWD/vtablesearch.h \
    $$PWD/abstracttest.h \
    $$PWD/diagnostic.h \
    $$PWD/customevents.h

# Qt's versions
# 5.2.0, 5.2.1
# 5.3.0, 5.3.1, 5.3.2

contains(QT_VERSION, ^5\\.[0-1]\\.[0-2]$) { # Since Qt 5.2.0
    HEADERS += \
        $$PWD/backport/qcommandlineoption.h \
        $$PWD/backport/qcommandlineparser.h

    SOURCES += \
        $$PWD/backport/qcommandlineoption.cpp \
        $$PWD/backport/qcommandlineparser.cpp
}

contains(QT_VERSION, ^5\\.[0-2]\\.[0-2]$) { # Since Qt 5.3.0
    HEADERS += \
        $$PWD/backport/qmarginsf.h

    SOURCES += \
        $$PWD/backport/qmarginsf.cpp
}
