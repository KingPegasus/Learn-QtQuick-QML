import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Frame Demo")

    Frame{
        anchors.centerIn: parent
        ColumnLayout{
            Button{
                text: "button1"
            }
            Button{
                text: "button2"
            }
            Button{
                text: "button3"
            }
        }
    }
}
