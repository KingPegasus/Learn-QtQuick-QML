import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("External components with Signals&Slots")

    Notifier{
        id : notifierId
        rectColor: "yellowgreen"
        target: recvId

    }

    Receiver{
        id: recvId
        anchors.right: parent.right
         rectColor: "dodgerblue"

    }

//    Component.onCompleted: {
//        notifierId.notify.connect(recvId.recvInfo)
//    }

}
