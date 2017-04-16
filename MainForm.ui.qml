import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.0
import QtQuick.Dialogs 1.1

Item {
    id: item1
    width: 400
    height: 450
    property alias zone0: zone0
    property alias zone1: zone1
    property alias zone2: zone2
    property alias zone3: zone3
    property alias zone4: zone4
    property alias zone5: zone5
    property alias zone6: zone6
    property alias zone7: zone7
    property alias zone8: zone8
    property alias button: button
    property alias button1: button1
    property alias text3: text3
    property alias text4: text4
    property alias image2 : image2
    property alias image1 : image1
    property alias image3 : image3
    property alias image4 : image4
    property alias image5 : image5
    property alias image6 : image6
    property alias image7 : image7
    property alias image8 : image8
    property alias image9 : image9
    property alias image10 : image10
    property alias image11 : image11
    property alias image12 : image12
    property alias image13 : image13
    property alias image14 : image14
    property alias image15 : image15
    property alias image16 : image16
    property alias image17 : image17
    property alias image18 : image18
    property alias message : message





    Text {
        id: titre
        x: 187
        color: "#820808"
        text: qsTr("Jeu de l'Araignée")
        font.bold: true
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 19
    }

    Text {
        id: instructions
        x: 121
        y: 405
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 18
    }

    Rectangle {
        id: fontdejeu
        x: 39
        y: 64
        width: 323
        height: 323
        color: "#ffffff"
        anchors.verticalCenterOffset: 200
        anchors.horizontalCenterOffset: 0
        anchors.verticalCenter: titre.verticalCenter
        anchors.horizontalCenter: titre.horizontalCenter

        MouseArea {
            id: zone0
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0


            Image {
                id: image1
                anchors.fill: parent
                source: "Cercle.png"
                visible : false
            }

            Image {
                id: image2
                anchors.fill: parent
                source: "Croix.png"
                visible : false
            }
        }

        MouseArea {
            id: zone1
            x: 112
            width: 100
            height: 100
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter

            Image {
                id: image3
                anchors.fill: parent
                source: "Cercle.png"
                visible: false
            }

            Image {
                id: image4
                x: 2
                y: 9
                anchors.fill: parent
                source: "Croix.png"
                visible: false
            }
        }

        MouseArea {
            id: zone2
            x: 223
            width: 100
            height: 100
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Image {
                id: image5
                anchors.fill: parent
                source: "Cercle.png"
                visible: false
            }

            Image {
                id: image6
                x: 2
                y: 9
                anchors.fill: parent
                source: "Croix.png"
                visible: false
            }
        }

        MouseArea {
            id: zone3
            y: 119
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.verticalCenter: parent.verticalCenter

            Image {
                id: image7
                anchors.fill: parent
                source: "Cercle.png"
                visible: false
            }

            Image {
                id: image8
                x: 8
                y: -6
                anchors.fill: parent
                source: "Croix.png"
                visible: false
            }
        }

        MouseArea {
            id: zone4
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Image {
                id: image9
                anchors.fill: parent
                source: "Cercle.png"
                visible: false
            }

            Image {
                id: image10
                x: 2
                y: 9
                anchors.fill: parent
                source: "Croix.png"
                visible: false
            }
        }

        MouseArea {
            id: zone5
            width: 100
            height: 100
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.verticalCenter: parent.verticalCenter

            Image {
                id: image11
                anchors.fill: parent
                source: "Cercle.png"
                visible: false
            }

            Image {
                id: image12
                x: 2
                y: 9
                anchors.fill: parent
                source: "Croix.png"
                visible: false
            }
        }

        MouseArea {
            id: zone6
            y: 223
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0

            Image {
                id: image13
                anchors.fill: parent
                source: "Cercle.png"
                visible: false
            }

            Image {
                id: image14
                x: 2
                y: 9
                anchors.fill: parent
                source: "Croix.png"
                visible: false
            }
        }

        MouseArea {
            id: zone7
            x: 112
            y: 223
            width: 100
            height: 100
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter

            Image {
                id: image15
                anchors.fill: parent
                source: "Cercle.png"
                visible: false
            }

            Image {
                id: image16
                x: 2
                y: 9
                anchors.fill: parent
                source: "Croix.png"
                visible: false
            }
        }

        MouseArea {
            id: zone8
            x: 223
            y: 223
            width: 100
            height: 100
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Image {
                id: image17
                anchors.fill: parent
                source: "Cercle.png"
                visible: false
            }

            Image {
                id: image18
                x: 2
                y: 9
                anchors.fill: parent
                source: "Croix.png"
                visible: false
            }
        }

        Rectangle {
            id: rectanglejeu
            x: 41
            y: 38
            width: 270
            height: 270
            color: "#00000000"
            border.width: 2
            border.color: "#040000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Rectangle {
                id: segment1
                x: 295
                y: -27
                width: 2
                height: 378
                color: "#110000"
                border.width: 2
                transformOrigin: Item.TopRight
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                border.color: "#0c0101"
                rotation: 45
            }

            Rectangle {
                id: segment2
                x: -27
                y: -27
                width: 2
                height: 378
                color: "#110000"
                border.width: 2
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                transformOrigin: Item.TopRight
                rotation: -45
                border.color: "#0c0101"
            }

            Rectangle {
                id: segment3
                x: 134
                y: -27
                width: 2
                height: 270
                color: "#110000"
                border.width: 2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                rotation: 90
                border.color: "#0c0101"
            }

            Rectangle {
                id: segment4
                x: 134
                y: -27
                width: 2
                height: 270
                color: "#110000"
                border.width: 2
                anchors.verticalCenter: parent.verticalCenter
                rotation: 0
                anchors.horizontalCenter: parent.horizontalCenter
                border.color: "#0c0101"
            }
        }

    }

    Button {
        id: button
        x: 38
        y: 398
        text: qsTr("Reset")
        anchors.horizontalCenterOffset: -100
        anchors.verticalCenterOffset: 180
        anchors.verticalCenter: fontdejeu.verticalCenter
        anchors.horizontalCenter: fontdejeu.horizontalCenter
    }

    Button {
        id: button1
        x: 268
        y: 398
        text: qsTr("Reset score")
        anchors.horizontalCenterOffset: 100
        anchors.horizontalCenter: fontdejeu.horizontalCenter
        anchors.verticalCenterOffset: 180
        anchors.verticalCenter: fontdejeu.verticalCenter
    }

    Text {
        id: text1
        text: qsTr("Score 1 :")
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        font.pixelSize: 15
    }

    Text {
        id: text2
        x: 333
        text: qsTr("Score 2 :")
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 1
        font.pixelSize: 15
    }

    Text {
        id: text3
        y: 32
        text: qsTr("Text")
        anchors.verticalCenterOffset: 20
        anchors.verticalCenter: text1.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 8
        font.bold: true
        font.pixelSize: 15
    }

    Text {
        id: text4
        x: 359
        y: 32
        text: qsTr("Text")
        anchors.verticalCenterOffset: 20
        anchors.verticalCenter: text2.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 4
        font.bold: true
        font.pixelSize: 15
    }
    MessageDialog {
        id : message
    }


}
