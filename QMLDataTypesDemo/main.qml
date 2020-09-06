import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property  string mString: "http://www.google.com"
    property int mInt: 45
    property bool isFemale: false
    property double mDouble: 77.53
    property url mUrl: "http://www.google.com"
    property var anyType: 2.2
    property var anArray: [1,2,3,"four",'five',(function(){return "six";})]
    property date mDate: "2020-09-29"
    Rectangle {
        width: 200
        height: 100 + mInt
        anchors.centerIn: parent
        color: "yellow"
        Text {
            id: mTextId
            anchors.centerIn: parent
            text: qsTr("Hello World")
            font.bold: isFemale?true:false //ternaryoperator
        }
    }

    Component.onCompleted: {
        console.log("The value of mString: " + mString)
        if(isFemale){
            console.log("You may wear a dress")
        }else{
            console.log("You may wear a suit")
        }
        console.log("Double: ",mDouble)

        if(mString === mUrl){
            console.log("String and URL are SAME")
        }else{
            console.log("String and URL are NOT SAME")
        }

        console.log("var anyType value: ", anyType, " with type: ", typeof(anyType))
        anyType = "Raza"
        console.log("var anyType value: ", anyType, " with type: ", typeof(anyType))
        anyType = true
        console.log("var anyType value: ", anyType, " with type: ", typeof(anyType))

        console.log("The length of the array is : ", anArray.length)

        anArray.forEach(function(value){
            console.log(value)
        })

        console.log("Date : " + mDate)
    }
}
