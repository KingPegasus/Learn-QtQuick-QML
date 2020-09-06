import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers Demo")

    property string mFirstName: "Raza"
    onMFirstNameChanged: {
        console.log("The firstname changed to: ", mFirstName)
    }

    Rectangle{
        width: 300
        height: 100
        color: 'greenyellow'
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                mFirstName = "Jaan"
            }
        }

    }

    Component.onCompleted: {
        console.log("The Firstname is : ", mFirstName)
    }
}
