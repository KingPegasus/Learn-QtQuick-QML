import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
            color: "red"
            anchors.fill: parent
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the rectangle")
                }
            }
        }
}
