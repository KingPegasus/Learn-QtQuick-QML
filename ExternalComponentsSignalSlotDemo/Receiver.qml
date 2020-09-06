import QtQuick 2.12

Item {
    property alias rectColor: receiverRectId.color

    width: receiverRectId.width
    height: receiverRectId.height
    function recvInfo(count){
        recvdislayTextId.text = count
        console.log("Receiver received number: ", count)
    }

    Rectangle{
        id: receiverRectId
        width: 200
        height: 200
        color: 'red'

        Text{
            id: recvdislayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: "0"
        }
    }

}
