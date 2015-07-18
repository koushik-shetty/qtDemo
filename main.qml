import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        anchors.fill: parent
        button1.onClicked: messageDialog.show(qsTr("Button 1 pressed"))
        button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
        button3.onClicked: messageDialog.show(qsTr("Button 3 pressed"))


        Rectangle {
            id: howerRect
            Label{
                text: "Click Me!"
                anchors.centerIn: parent
            }

            x: 172
            y: 13
            width: 287
            height: 63
            color: "#cc9000"
            rotation: 0


            MouseArea {
                id: howerRectMouseArea
                x: 0
                y: 0
                width: 287
                height: 63
                function onMouseMove(){
                    if(parent.color == "#00cc00"){
                     parent.color = "#cc0000"
                    }
                    else{
                        parent.color="#00cc00"
                    }


                }
                onEntered:parent.color = "#00cc00"
                onExited: parent.color = "#ee9000"
//                onMouseXChanged: onMouseMove()
            }

        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption
            messageDialog.open()
        }
    }
}
