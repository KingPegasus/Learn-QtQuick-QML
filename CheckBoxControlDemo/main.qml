import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CheckBoxControl Demo")

    Column{
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        CheckBox{
            text: "option1"
            checked: true
            onCheckStateChanged: {
                if(checked==true){
                    console.log("Option1 is checked")
                }else{
                    console.log("Option1 is unchecked")
                }
            }
        }
        CheckBox{
            text: "option2"
            checked: false
            onCheckStateChanged: {
                if(checked==true){
                    console.log("Option2 is checked")
                }else{
                    console.log("Option2 is unchecked")
                }
            }
        }
        CheckBox{
            text: "option3"
            checked: false
            enabled: false
            onCheckStateChanged: {
                if(checked==true){
                    console.log("Option3 is checked")
                }else{
                    console.log("Option3 is unchecked")
                }
            }
        }

    }

}
