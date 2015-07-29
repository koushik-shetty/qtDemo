import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

//ApplicationWindow {
//    title: qsTr("Hello World")
//    width: 640
//    height: 480
//    visible: true


//    MainForm {
//        anchors.fill: parent

        Rectangle{
            id:toolBar
            color: "#000000"
            width: 30
            anchors{
                top:Window.left
                right:Window.right
                bottom: Window.bottom
                topMargin: 100
                bottomMargin: 100
            }
            Column{
                anchors.fill: parent
                anchors.topMargin: 30
                spacing: 30
                Repeater{
                    model: 2
                    Rectangle{width: 50; height:50; color:"red";}
                }
            }
        }
//    }
//}


        // creating a Page items
        Page {
            id: page1
            anchors {
                top: window.top
                bottom: window.bottom
                right: markerPanel.left
                left: toolBar.right
            }
        }
//    }
//}

