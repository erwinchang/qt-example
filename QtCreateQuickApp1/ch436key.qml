import QtQuick 2.12
import QtQuick.Controls 1.2
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CH4.3.6 example")

    Rectangle{
        id: colorRectangle
        width: 300;
        height: 200;
        color: "#c0c0c0";
        focus: true;
        Keys.enabled: true;
        Keys.onEscapePressed: Qt.quit();
        Keys.onBackPressed: Qt.quit();
        Keys.onPressed: {
            switch(event.key){
            case Qt.Key_0:
            case Qt.Key_1:
            case Qt.Key_2:
            case Qt.Key_3:
                event.accepted = true;
                keyView.text = event.key - Qt.Key_0;
                break;
            }
        }
        Text{
            id: keyView;
            font.bold: true;
            font.pixelSize: 24;
            text: qsTr("text");
            anchors.centerIn: parent;
        }
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
                    console.log(colorRectangle.color.r,colorRectangle.color.g,colorRectangle.color.b);
                }
            }
        }
    }
}
