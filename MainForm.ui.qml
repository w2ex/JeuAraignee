import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.0

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
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            id: zone0
            width: 100
            height: 100
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0

            Rectangle {
                id: rectangle
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[0]
                anchors.verticalCenterOffset: -15
                anchors.horizontalCenterOffset: -15
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
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

            Rectangle {
                id: rectangle1
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[1]
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: -15
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

            Rectangle {
                id: rectangle2
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[2]
                anchors.horizontalCenterOffset: 15
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: -15
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

            Rectangle {
                id: rectangle3
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[3]
                anchors.horizontalCenterOffset: -15
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 0
            }
        }

        MouseArea {
            id: zone4
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Rectangle {
                id: rectangle4
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[4]
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 0
            }
        }

        MouseArea {
            id: zone5
            width: 100
            height: 100
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.verticalCenter: parent.verticalCenter

            Rectangle {
                id: rectangle5
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[5]
                anchors.horizontalCenterOffset: 15
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 0
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

            Rectangle {
                id: rectangle6
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[6]
                anchors.horizontalCenterOffset: -15
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 15
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

            Rectangle {
                id: rectangle7
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[7]
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 15
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

            Rectangle {
                id: rectangle8
                x: 0
                y: 0
                width: 40
                height: 40
                color: serveurPartie.srvrQML[8]
                anchors.horizontalCenterOffset: 15
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 15
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
    }

    Button {
        id: button1
        x: 268
        y: 398
        text: qsTr("Reset score")
    }

    Text {
        id: text1
        x: 8
        y: 8
        text: qsTr("Score 1 :")
        font.pixelSize: 15
    }

    Text {
        id: text2
        x: 333
        y: 8
        text: qsTr("Score 2 :")
        font.pixelSize: 15
    }

    Text {
        id: text3
        x: 8
        y: 32
        text: qsTr("Text")
        font.bold: true
        font.pixelSize: 15
    }

    Text {
        id: text4
        x: 359
        y: 32
        text: qsTr("Text")
        font.bold: true
        font.pixelSize: 15
    }


}
