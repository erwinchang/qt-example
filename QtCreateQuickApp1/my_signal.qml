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

        Component.onCompleted: {
            console.log("The rectangle's color is", color)
        }
    }
}
