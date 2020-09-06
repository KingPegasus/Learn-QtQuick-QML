import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
Window {
    width: mGridLayoutId.implicitWidth
    height: mGridLayoutId.implicitHeight
    visible: true
    title: qsTr("Layouts Demo")

    GridLayout{
        id: mGridLayoutId
        anchors.fill: parent
        columns: 3

        Rectangle{
            id: topLeftRectId
            width: 70
            height:width
            color: "magenta"
//            Layout.fillWidth: true
//            Layout.fillHeight: true
            Layout.alignment: Qt.AlignCenter

        }
        Rectangle{
            id: topCenterRectId
            width: 100
            height:width
            color: "yellowgreen"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle{
            id: topRightRectId
            width: 100
            height: width
            color: "dodgerblue"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Rectangle{
            id: centerLeftRectId
            width: 100
            height: width
            color: "red"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle{
            id: centerCenterRectId
            width: 100
            height: width
            color: "green"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.columnSpan: 2
        }
//        Rectangle{
//            id: centerRightRectId
//            width: 100
//            height: width
//            color: "yellow"
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//        }
        Rectangle{
            id: bottomLeftRectId
            width: 100
            height: width
            color: "royalblue"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle{
            id: bottomCenterRectId
            width: 100
            height: width
            color: "brown"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Rectangle{
            id: bottomRightRectId
            width: 100
            height: width
            color: "gold"
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
