import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("JS Functions and Scope")

    function min(a,b){
        return Math.min(a,b)
    }

    Rectangle {
        id: mRectId
        width: min(500,400)
        height: 100
        anchors.centerIn: parent
        color: "blue"
    }

    MouseArea{
        id:mMouseAreaId
        anchors.fill: parent

        function sayMessage(){
            console.log("helllo")
        }

        onClicked: {
            sayMessage()
        }
    }

    Component.onCompleted: {
        console.log("The width of rect :", min(500,400))
        mMouseAreaId.sayMessage()
    }
}
