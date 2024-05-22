import QtQuick 2.12
import QtQuick.Controls 1.2
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CH4.3.4 Item example")

    Rectangle{
        width: 320;
        height: 480;
        color: "blue";
        border.color: "#808080";
        border.width: 2;
        radius:12;
    }

    Rectangle{
        id: bottomBar
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        height: buttonRow.height * 1.2

        Row{
            id: buttonRow
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            height: implicitHeight
            width: parent.width

            Button {
                text: "Open"
                anchors.verticalCenter: parent.verticalCenter
                onClicked: {
                    console.log("test log");
                }
            }
        }
    }
}
