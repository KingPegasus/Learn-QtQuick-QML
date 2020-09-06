import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string textToShow: "HElllo"

    Row {
        id: row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: redRectID
            width: 150 ; height: 150
            color: "red"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked RED Rectangle")
                    textToShow = 'red'
                }
            }
        }
        Rectangle {
            id: greenRectID
            width: 150 ; height: 150
            color: "green"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked GREEN Rectangle")
                    textToShow = 'green'
                }
            }
        }
        Rectangle {
            id: blueRectID
            width: 150 ; height: 150
            color: "blue"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked BLUE Rectangle")
                    textToShow = 'blue'
                }
            }
        }

        Rectangle {
            id: textRectID
            width: 150 ; height: 150
            color: "dodgerblue"
            radius: 100
            Text {
                id: textId
                anchors.centerIn: parent
                text : textToShow //binded
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked dodgerBLUE CIrcle")
                    textId.text = 'loop' //binding changed
                }
            }
        }
    }
}
