import QtQuick 2.5
import Qt.labs.folderlistmodel 2.1
import QtGraphicalEffects.private 1.0
import QtPositioning 5.7
import QtQuick.Controls 2.0
import QtQuick.Extras 1.4
import QtQuick.LocalStorage 2.0
import QtQuick.Layouts 1.3
import QtQuick.Window 2.2
import QtQuick.Templates 2.0

Rectangle {
    id: mainRectangle

    width: 800
    height: 650
    color: "#222222"

    // Page
    Rectangle {
        id: rectangle1
        height: 33
        color: "#303030"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        
        // Header
        Row {
            id: row1
            anchors.fill: parent

            // Row button
            Rectangle {
                id: homeButtonRectangle
                width: 200
                height: 33
                color: "#ffffff"

                Text {
                    id: homeButtonText
                    text: qsTr("File")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 12
                }

                MouseArea {
                    id: homeButtonMouseArea
                    enabled: none.none
                    anchors.fill: parent
                }
            }

            // Library button
            Rectangle {
                id: libraryButtonRectangle
                width: 200
                height: 33
                color: "#ffffff"

                Text {
                    id: libraryButtonText
                    text: qsTr("Library")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 12
                }

                MouseArea {
                    id: libraryButtonMouseArea
                    anchors.fill: parent
                }
            }

            // Albums button
            Rectangle {
                id: albumsButtonRectangle
                width: 200
                height: 33
                color: "#ffffff"

                Text {
                    id: albumsButtonText
                    text: qsTr("Albums")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 12
                }

                MouseArea {
                    id: albumsButtonMouseArea
                    anchors.fill: parent
                }
            }

            // Cards button
            Rectangle {
                id: cardsButtonRectangle
                width: 200
                height: 33
                color: "#ffffff"

                Text {
                    id: cardsButtonText
                    text: qsTr("Cards")
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 12
                }

                MouseArea {
                    id: cardsButtonMouseArea
                    anchors.fill: parent
                }
            }

        }
    }

    Loader {
       id: albumPageLoader
       active: false
       visible: false
       source: "qrc:/pages/pageAlbum.qml"
    }
    Loader {
       id: cardsPageLoader
       active: false
       visible: false
       source: "qrc:/pages/pageCards.qml"
    }
    Loader {
       id: homePageLoader
       visible: true
       source: "qrc:/pages/pageHome.qml"
    }
    Loader {
       id: libraryPageLoader
       active: false
       visible: false
       source: "qrc:/pages/pageLibrary.qml"
    }


    // Page 1 Text
    Text {
        id: homeStateText
        x: 249
        y: 242
        width: 352
        height: 167
        color: "#ffffff"
        text: qsTr("This is page 1")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 25

    }

    // Page 2 Text
    Text {
        id: libraryStateText
        x: 249
        y: 242
        width: 352
        height: 167
        color: "#ffffff"
        text: qsTr("This is page 2")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 25
    }

    // Page 3 Text
    Text {
        id: albumStateText
        x: 249
        y: 242
        width: 352
        height: 167
        color: "#ffffff"
        text: qsTr("This is page 3")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 25
    }

    // Image 1
    Image {
        id: image1
        x: 22
        y: 251
        source: "resources/images/12.png"
        opacity: 0
    }

    // Image 2
    Image {
        id: image2
        x: 525
        y: 210
        source: "resources/images/8.png"
        opacity: 0
    }

    Connections {
        target: homeButtonMouseArea
        onClicked: { mainRectangle.state = "homeState" }
    }

    Connections {
        target: libraryButtonMouseArea
        onClicked: { mainRectangle.state = "libraryState" }
    }

    Connections {
        target: albumsButtonMouseArea
        onClicked: { mainRectangle.state = "albumsState" }
    }

    Connections {
        target: cardsButtonMouseArea
        onClicked: { mainRectangle.state = "cardsState" }
    }

    // States
    states: [

        // Library State
        State {
            name: "libraryState"

            PropertyChanges {
                target: libraryStateText
                x: 312
                y: 305
                color: "#ffffff"
                text: qsTr("This is page 2!")
                visible: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 35
                opacity: 1
            }

            PropertyChanges {
                target: homeStateText
                visible: false
            }

            PropertyChanges {
                target: image1
                opacity: 1
            }

            PropertyChanges {
                target: image2
                visible: false
            }

            PropertyChanges {
                target: cardsPageLoader
                active: false
                visible: false
            }

            PropertyChanges {
                target: homePageLoader
                active: false
                visible: false
            }

            PropertyChanges {
                target: albumPageLoader
                active: false
                visible: false
            }

            PropertyChanges {
                target: libraryPageLoader
                visible: true
                active: true
            }
        },

        // Album State
        State {
            name: "albumsState"
            PropertyChanges {
                target: libraryStateText
                x: 312
                y: 305
                color: "#ffffff"
                text: qsTr("This is page 2!")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 35
                opacity: 1
            }

            PropertyChanges {
                target: albumStateText
                x: 299
                y: 273
                width: 203
                height: 104
                color: "#ffffff"
                text: qsTr("Page 3 here!")
                visible: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 21
                opacity: 1
            }

            PropertyChanges {
                target: homeStateText
                visible: false
            }

            PropertyChanges {
                target: image2
                opacity: 1
            }

            PropertyChanges {
                target: image1
                visible: false
            }

            PropertyChanges {
                target: homePageLoader
                active: false
                visible: false
            }

            PropertyChanges {
                target: albumPageLoader
                visible: true
                active: true
            }

            PropertyChanges {
                target: cardsPageLoader
                active: false
            }

            PropertyChanges {
                target: libraryPageLoader
                active: false
            }
        },

        // Cards State
        State {
            name: "cardsState"
            PropertyChanges {
                target: libraryStateText
                x: 312
                y: 305
                color: "#ffffff"
                text: qsTr("This is page 2!")
                verticalAlignment: Text.AlignVCenter
                visible: true
                opacity: 1
                font.pixelSize: 35
                horizontalAlignment: Text.AlignHCenter
            }

            PropertyChanges {
                target: homeStateText
                visible: false
            }

            PropertyChanges {
                target: image1
                opacity: 1
            }

            PropertyChanges {
                target: image2
                visible: false
            }

            PropertyChanges {
                target: cardsPageLoader
                visible: true
                active: true
            }

            PropertyChanges {
                target: albumPageLoader
                active: false
                source: "pages//pageAlbum.qml"
            }

            PropertyChanges {
                target: homePageLoader
                visible: false
                active: false
            }

            PropertyChanges {
                target: libraryPageLoader
                active: false
            }
        },

        // Home State
        State {
            name: "homeState"

            PropertyChanges {
                target: albumStateText
                text: qsTr("Album state text")
            }

            PropertyChanges {
                target: homeStateText
                text: qsTr("Home state text")
            }

            PropertyChanges {
                target: libraryStateText
                text: qsTr("library state text")
            }
        }
    ]
}
