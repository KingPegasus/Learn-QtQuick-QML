import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("KeyNavigation Demo")

//    Row{
//        anchors.centerIn: parent

//        Rectangle{
//            id: firstRectId
//            width: 200
//            height: width
//            border.color: "black"
//            color: "green"
//            focus: true
//            onFocusChanged: {
//                if (focus){
//                    color="green"
//                }else{
//                    color="gray"
//                }
//            }

//            Keys.onDigit5Pressed: {
//                console.log("I am Rect1")
//            }
//            KeyNavigation.right: secondRectId
//        }

//        Rectangle{
//            id: secondRectId
//            width: 200
//            height: width
//            border.color: "black"
//            color: "blue"
//            onFocusChanged: {
//                if (focus){
//                    color="blue"
//                }else{
//                    color="gray"
//                }
//            }
//            Keys.onDigit5Pressed: {
//                console.log("I am Rect2")
//            }
//            KeyNavigation.right: firstRectId
//        }
//    }

    Grid {
         //width: 100; height: 100
        anchors.centerIn: parent
         columns: 2

         Rectangle {
             id: topLeft
             width: 100; height: 100
             color: focus ? "red" : "lightgray"
             focus: true

             KeyNavigation.right: topRight
             KeyNavigation.down: bottomLeft
         }

         Rectangle {
             id: topRight
             width: 100; height: 100
             color: focus ? "red" : "lightgray"

             KeyNavigation.left: topLeft
             KeyNavigation.down: bottomRight
         }

         Rectangle {
             id: bottomLeft
             width: 100; height: 100
             color: focus ? "red" : "lightgray"

             KeyNavigation.right: bottomRight
             KeyNavigation.up: topLeft
         }

         Rectangle {
             id: bottomRight
             width: 100; height: 100
             color: focus ? "red" : "lightgray"

             KeyNavigation.left: bottomLeft
             KeyNavigation.up: topRight
         }
     }
}
