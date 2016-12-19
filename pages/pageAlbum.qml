import QtQuick 2.0

// Album Page
Item {
    id: albumPageItem
    Rectangle {
        id: pageRectangle
        width: 400
        height: 400
        color: 'blue'
        visible: true
    }
    Text{
        id: albumStateText1
        text: "Hello from pageAlbum.qml"
    }
}
