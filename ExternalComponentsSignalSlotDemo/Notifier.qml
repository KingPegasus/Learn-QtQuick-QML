import QtQuick 2.12

Item {
    width: notifierRectId.width
    height: notifierRectId.height
    property int count: 0
    property alias rectColor: notifierRectId.color

    signal notify( string count )
    property Receiver target: null
    onTargetChanged: {
        notify.connect(target.recvInfo)
    }

    Rectangle{
        id: notifierRectId
        width: 200
        height: 200
        color: 'red'

        Text{
            id: dislayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: count
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                count++
                notify(count)
            }
        }
    }

}
