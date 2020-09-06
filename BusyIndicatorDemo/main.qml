import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("BusyIndicator Demo")

    ColumnLayout{
        width: parent.width
        height: parent.height

        BusyIndicator{
            id: busyIndicatorID
            Layout.alignment: Qt.AlignHCenter
            running: false
            visible: false
        }

        ColumnLayout{
            Button{
                id: button1
                text: "Running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorID.running = true
                    busyIndicatorID.visible= true
                }
            }
            Button{
                id: button2
                text: "Not Running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorID.running = false
                    busyIndicatorID.visible= false
                }
            }
        }

        Item{
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
