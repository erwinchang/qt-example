import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 320
    height: 200
    visible: true
    title: qsTr("CH4.3.7 example")

    Rectangle {
        width: 320;
        height: 200;
        Text {
            width: 150;
            height: 100;
            wrapMode: Text.WordWrap;
            font.bold: true;
            font.pixelSize: 24;
            font.underline: true;
            text: "Hello Blue Text 1234567890";
            anchors.centerIn: parent;
            color: "blue";
        }
    }
}

