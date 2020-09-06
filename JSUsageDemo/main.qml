import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JS Usage Demo")

    Rectangle{
        id: containerRectId
        width: getHeight() // JS in property binding
        height: 100
        color: x > 300 ? "red" : "green" //JS

        //Js in signal Handler
        onXChanged: {
            console.log("Current x:" , x)
        }

        //anchors.centerIn: parent

        function getHeight(){
            return height *2
        }

    }

    MouseArea{
        anchors.fill: parent
        drag.target: containerRectId
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX: parent.width - containerRectId.width

    }
}
