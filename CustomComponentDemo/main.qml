import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

//    Column{
//        spacing: 10
//        Rectangle{
//            width:300
//            height:100
//            color:"red"
//        }
//        Rectangle{
//            width:300
//            height:100
//            color:"blue"
//        }
//    }

    Column{
        MButton{
           buttonText: "Button1"
           onButtonClicked: {
               console.log("Clicked on ", buttonText, " from main file")

           }
        }

        MButton{
           buttonText: "Button2"
        }

    }



}
