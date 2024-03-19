TEMPLATE = app
TARGET = dashboard
INCLUDEPATH += .
QT += quick

SOURCES += \
    main.cpp

RESOURCES += \
    dashboard.qrc

OTHER_FILES += \
    qml/dashboard.qml \
    qml/DashboardGaugeStyle.qml \
    qml/IconGaugeStyle.qml \
    qml/TachometerStyle.qml \
    qml/TurnIndicator.qml \
    qml/ValueSource.qml

target.path = D:/gitWork/github/Qt/qt-example/dashboard
INSTALLS += target
