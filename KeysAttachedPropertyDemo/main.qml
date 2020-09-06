import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached Property")

    Rectangle{
        id: containedRect
        anchors.centerIn: parent
        width: 300
        height: 50
        color: "dodgerblue"
        focus: true

//        Keys.onDigit1Pressed: {
//            console.log("pressed key 1")
//        }

//        Keys.onDigit5Pressed: {
//            if(event.modifiers === Qt.ControlModifier){
//                console.log("pressed 5 with control ")
//            }else{
//                console.log("pressed 5 without control")
//            }
//        }

        Keys.onPressed: {
            if (event.key === Qt.Key_1){
                console.log("pressed key 1")
            }

            if((event.key === Qt.Key_5) && (event.modifiers & Qt.ControlModifier)){
                console.log("pressed 5 with control ")
            }else{
                console.log("pressed 5 without control")
            }
        }
    }
}
