import QtQuick 2.0

// Cards Page
Item {
    id: cardsPage
    Rectangle {
        id: pageRectangle
        width: 400
        height: 400
        color: 'red'
        visible: true
    }
    Text{
        id: cardsStateText1
        text: "Hello from pageCards.qml"
    }
}
