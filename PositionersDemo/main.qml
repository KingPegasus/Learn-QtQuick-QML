import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioners Demo")

    Rectangle{
        id: conRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent

        Grid{
            columns: 3
            //spacing: 10
            Rectangle{
                id: topLeftRectId
                width: 100
                height:width
                color: "magenta"
                Image {
                    anchors.centerIn: parent
                    width: 80
                    height: width
                    source: "images/badge.png"
                }
            }
            Rectangle{
                id: topCenterRectId
                width: 100
                height:width
                color: "yellowgreen"
            }
            Rectangle{
                id: topRightRectId
                width: 100
                height: width
                color: "dodgerblue"
            }
            Rectangle{
                id: centerLeftRectId
                width: 100
                height: width
                color: "red"
            }
            Rectangle{
                id: centerCenterRectId
                width: 100
                height: width
                color: "green"
            }
            Rectangle{
                id: centerRightRectId
                width: 100
                height: width
                color: "yellow"
            }
            Rectangle{
                id: bottomLeftRectId
                width: 100
                height: width
                color: "royalblue"
            }
            Rectangle{
                id: bottomCenterRectId
                width: 100
                height: width
                color: "brown"
            }
            Rectangle{
                id: bottomRightRectId
                width: 100
                height: width
                color: "gold"
            }

        }

    }
}
