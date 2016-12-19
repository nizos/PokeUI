import QtQuick 2.0

// Library Page
Item {
    id: libraryPage
    Rectangle {
        id: pageRectangle
        width: 400
        height: 400
        color: 'yellow'
        visible: true
    }
    Text{
        id: libraryStateText1
        text: "Hello from pageLibrary.qml"
    }
}
