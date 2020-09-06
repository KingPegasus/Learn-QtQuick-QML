import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ComboBox Demo")

    Column{
        spacing: 40
        width: parent.width

        Label{
            text:  "Non Edititable Combo"
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            width: parent.width
        }

        ComboBox{
            id: nonEditableComboId
            model: ["one", "Two", "3", "4"]
            anchors.horizontalCenter: parent.horizontalCenter
            onActivated: {
                console.log("["+currentIndex+"]"+ " "+ currentText+" is activated")
            }
        }
        Label{
            text:  "Edititable Combo"
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            width: parent.width
        }

        ComboBox{
            id: editableComboId
            editable: true
            textRole : "text"
            model: ListModel{
                id: model
                // @disable-check M16
                ListElement{text:"DOg"; location:"kdkw"}
                // @disable-check M16
                ListElement{text:"sas"; location:"dsd"}
                // @disable-check M16
                ListElement{text:"we"; location:"asas"}
                // @disable-check M16
                ListElement{text:"xc"; location:"bbb"}
            }

            anchors.horizontalCenter: parent.horizontalCenter
            onActivated: {
                console.log("["+currentIndex+"]"+ " "+ currentText+" is activated")
            }

            onAccepted: {
                if(find(editText)===-1){
                    model.append({text: editText, location: "US"})
                }
            }
        }

        Button{
            text: "Capture Current Element"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                console.log("["+model.get(editableComboId.currentIndex).text + "] " +
                            model.get(editableComboId.currentIndex).location)
            }
        }
    }
}
