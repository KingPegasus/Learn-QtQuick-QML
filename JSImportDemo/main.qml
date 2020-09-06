import QtQuick 2.12
import QtQuick.Window 2.12
import "utillties1.js" as Utilities
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JS Import Demo")

    Rectangle{
        width: 300
        height: 100
        color: 'yellowgreen'
        anchors.centerIn: parent

        Text{
            text: "click mee"
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                //console.log("helo there")

                //Utilities.greeting()
                //console.log("Our ages combine: ", Utilities.combineAges(33,22))
                console.log("Sub 33-11=",Utilities.subtract(33,11))
            }
        }
    }
}
