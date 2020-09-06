import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    RowLayout{
        anchors.left: parent.left
        anchors.right: parent.right

        Button{
            id: button1
            text: "Button1"
            Layout.fillWidth: true
            onClicked: {
                console.log("B1")
            }
        }

        Button{
            id: button2
            text: "Button2"
            Layout.fillWidth: true
            onClicked: {
                console.log("B2")
            }
        }
    }
}
