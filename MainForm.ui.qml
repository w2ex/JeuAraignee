import QtQuick 2.6

import QtQuick.Controls 2.1

Rectangle {
    id: rectangle
    width: 360
    height: 360
    property alias mouseArea1: mouseArea1
    property alias mouseArea2: mouseArea2
    property alias mouseArea3: mouseArea3
    property alias mouseArea4: mouseArea4
    property alias mouseArea5: mouseArea4
    property alias mouseArea6: mouseArea6
    property alias mouseArea7: mouseArea7
    property alias mouseArea8: mouseArea8
    property alias mouseArea9: mouseArea9
    property alias button: button
    property alias button1: button1
    property alias text3 : text3
    property alias text5 : text5
    property alias image0 : image0
    property alias image1 : image1
    property alias image2 : image2
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



    Grid {
        id: grid
        width: 300
        height: 300
        anchors.left: parent.left
        anchors.leftMargin: 0
        rows: 3
        columns: 3

        MouseArea {
            id: mouseArea1
            width: 100
            height: 100

            Image {
                id: image0
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }

            Image {
                id: image1
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }

        MouseArea {
            id: mouseArea2
            width: 100
            height: 100

            Image {
                id: image2
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }
            Image {
                id: image3
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }

        MouseArea {
            id: mouseArea3
            width: 100
            height: 100
            Image {
                id: image4
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }

            Image {
                id: image5
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }

        MouseArea {
            id: mouseArea4
            width: 100
            height: 100
            Image {
                id: image6
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }

            Image {
                id: image7
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }

        MouseArea {
            id: mouseArea5
            width: 100
            height: 100
            Image {
                id: image8
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }

            Image {
                id: image9
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }

        MouseArea {
            id: mouseArea6
            width: 100
            height: 100
            Image {
                id: image10
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }

            Image {
                id: image11
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }

        MouseArea {
            id: mouseArea7
            width: 100
            height: 100
            Image {
                id: image12
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }

            Image {
                id: image13
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }

        MouseArea {
            id: mouseArea8
            width: 100
            height: 100
            Image {
                id: image14
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }

            Image {
                id: image15
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }

        MouseArea {
            id: mouseArea9
            width: 100
            height: 100
            Image {
                id: image16
                width: 100
                height: 100
                source: "../../Téléchargements/Cercle.png"
            }

            Image {
                id: image17
                width: 100
                height: 100
                source: "../../Téléchargements/Croix.png"
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 300
        y: 0
        width: 60
        height: 300
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 0

        Text {
            id: text1
            x: 17
            y: 8
            width: 27
            height: 33
            text: qsTr("Score")
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: 17
            y: 41
            text: qsTr("Joueur 1")
            font.pixelSize: 12
        }
        Text {
            id: text3
            x: 17
            y: 61
            font.pixelSize: 12
        }
        Text {
            id: text4
            x: 18
            y: 101
            text: qsTr("Joueur 2")
            font.pixelSize: 12
        }
        Text {
            id: text5
            x: 19
            y: 121
            font.pixelSize: 12
        }
    }

    Rectangle {
        id: rectangle2
        x: 0
        y: 300
        width: 360
        height: 60
        color: "#ffffff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

            Button {
                    id: button
                    x: 149
                    y: 8
                    width: 157
                    height: 40
                    text: qsTr('Quitter')
                }


                Button {
                    id: button1
                    x: 16
                    y: 11
                    width: 67
                    height: 34
                    text: qsTr('Recommencer la partie')
                }


    }
}
