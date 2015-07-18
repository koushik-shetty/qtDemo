import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

Rectangle {
    id:root
    width: 150
    height: 30
    color: "#ccaa00"
    Label{
        id:toolText
        text:qStr("note1")
        visible: true
    }

    function setText(text){
        toolText.text = qStr(text)
    }

}

