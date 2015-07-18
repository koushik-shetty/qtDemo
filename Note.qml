import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
Rectangle {
    id:root
    width: 200
    height: 200
    color: "#e6e600"


    NoteToolbar{
        id:notetoolbar
        //width: 200
        //height: 30
        setText:  (qStr("note1"))
        anchors{
            top:root.top
            right: root.right
            left: root.left
        }
    }

    TextEdit{
        id:editarea
        width: 200
        height: root.height - notetoolbar.height
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top : notetoolbar.bottom
        wrapMode: TextEdit.Wrap
    }

}

