import QtQuick 2.0

// Home Page
Item {
    id: homePage
    Rectangle {
        id: pageRectangle
        width: 400
        height: 400
        color: 'green'
        visible: true
    }
    Text{
        id: albumStateText1
        text: "Hello from pageHome.qml"
    }
}
