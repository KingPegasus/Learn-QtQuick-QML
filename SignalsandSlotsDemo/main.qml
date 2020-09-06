import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals and Slots Demo")

    property int increment: 50
    Rectangle{
        id: rectangleId
        width: 200 + increment
        height: 300
        color: 'red'

        signal greet(string message) //declared

        onGreet:{
            console.log("OnGreet called")
        }

        onWidthChanged: {

        }

        function myGreeting(mMessage){
            console.log("my greetings: ", mMessage)
            increment+=50
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                rectangleId.greet("hello World")
            }
        }
        Component.onCompleted: {
            rectangleId.greet.connect(myGreeting)
        }
    }

}
