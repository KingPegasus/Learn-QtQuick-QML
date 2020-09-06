import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("BAsic Elements Demo")

    Item{
        id: containerItemId
        x: 50; y:50

        width: 600
        height: 300

        Rectangle{
            color:"beige"
            border.color: "black"
            anchors.fill: parent
        }

        Rectangle{
            x:0
            y:10
            width:50
            height:50
            color:"red"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Rectangle{
            x:60
            y:10
            width:50
            height:50
            color:"blue"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x:120
            y:10
            width:50
            height:50
            color:"yellow"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x:180
            y:10
            width:50
            height:50
            color:"green"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Text {
            x:100
            y:100
            id: mTextID
            text: qsTr("This is my text")
            font {
                family: "New Times Roman"
                pointSize: 20
                bold: true

            }
            color: "purple"
        }
        Image {
            x:10
            y:150
            width: 100
            height: 100
            //Loading image from the working directory
            source: "file:Cloud.png"
        }
        Image {
            x:150
            y:150
            width: 100
            height: 100
            //loading from resource file
            source: "images/Cloud.png"
        }

        Image {
            x:300
            y:150
            width: 100
            height: 100
            //Full path
            source: "file:///C:/Users/Raza Khalid/Pictures/Cloud.png"
        }


        Image {
            x:450
            y:150
            width: 100
            height: 100
            //url path
            source: "http://img.icons8.com/cute-clipart/344/google-logo.png"
        }
    }


}
