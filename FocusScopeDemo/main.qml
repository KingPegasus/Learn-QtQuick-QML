import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true

    title: qsTr("Focus Scope Demo")

    Column{
        MButton{

        }

        MButton{
            focus: true
            color: "green"
        }
    }
}
