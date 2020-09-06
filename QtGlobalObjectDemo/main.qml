import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global Object Demo")

    property var fonts: Qt.fontFamilies()
    Rectangle{
        width: 300
        height:100
        color: "red"
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Quitting the App")
                Qt.quit()

                //list the available fonts
                for (var i=0; i< fonts.length; i++){
                    console.log("[" + i + "] : " +fonts[i] )
                }

                //hash a string
                var mName = " raza khalid"
                var mNameHash = Qt.md5(mName)
                console.log("The hash of ",mName," is ", mNameHash)

                //Open url externally
                //Qt.openUrlExternally("https://www.linkedin.com/in/muhammad-raza-khalid-saleemi/")

                // open local files with default program
                 Qt.openUrlExternally("file:///C:/Users/Raza Khalid/Pictures/QFM.png")

                //plateform
                console.log(Qt.platform.os)


            }
        }
    }
}
