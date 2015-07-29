import QtQuick 2.0

Rectangle {
    id:root

    width: 30
    height: 310
    color:"#000000"

    Column{
        id:markerPanel
        anchors.centerIn: parent
        spacing: 10

        Repeater{
            model:3

            delegate:
                Marker {id:marker}
        }

    }
}

