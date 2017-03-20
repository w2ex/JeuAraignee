import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Jeu de l'araignée")

    MainForm {
        color: "#fbec89"
        anchors.fill: parent


        Rectangle {
            id: rectangle
            x: 100
            y: 100
            width: 300
            height: 300
            color: "#00000000"
            border.width: 2

            MouseArea {
                id: mouseArea
                onClicked: P.traitement(1);
            }
        }
    }
}
