import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CH6.1 example")

    Rectangle {
        width: 320;
        height: 240;
        color: "gray";

        Button{
            text: "Quit";
            anchors.centerIn: parent;
            onClicked: {
                Qt.quit();
            }
        }
    }
}


