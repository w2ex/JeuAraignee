import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    property alias page: page
    title: qsTr("Araignee")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        anchors.fill: parent
        id:page
        zone0 {
            onClicked:serveurPartie.traitement(0)
        }
        zone1 {
            onClicked:serveurPartie.traitement(1)
        }
        zone2 {
            onClicked:serveurPartie.traitement(2)
        }
        zone3 {
            onClicked:serveurPartie.traitement(3)
        }
        zone4 {
            onClicked:serveurPartie.traitement(4)
        }
        zone5 {
            onClicked:serveurPartie.traitement(5)
        }
        zone6 {
            onClicked:serveurPartie.traitement(6)
        }
        zone7 {
            onClicked:serveurPartie.traitement(7)
        }
        zone8 {
            onClicked:serveurPartie.traitement(8)
        }
        button1{
               onClicked : serveurPartie.resetScore();
        }
        button{
               onClicked : serveurPartie.reset();
        }
        text3{
             text: qsTr(serveurPartie.getScore(1))
       }
       text4{
            text: qsTr(serveurPartie.getScore(2))
       }
}
}
