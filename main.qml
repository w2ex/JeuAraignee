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
            onClicked:{serveurPartie.traitement(0);
               image1.visible = (serveurPartie.estVisible(1, 0)) ? true : false;
               image2.visible = (serveurPartie.estVisible(2, 0)) ? true : false;
                print(serveurPartie.estVisible(1,0));
                print(serveurPartie.estVisible(2,0));}
        }
        zone1 {
            onClicked:{serveurPartie.traitement(1);
                image3.visible = (serveurPartie.estVisible(1, 1)) ? true : false;
                image4.visible = (serveurPartie.estVisible(2, 1)) ? true : false;}
        }
        zone2 {
            onClicked:{serveurPartie.traitement(2);
            image5.visible = (serveurPartie.estVisible(1, 2)) ? true : false;
            image6.visible = (serveurPartie.estVisible(2, 2)) ? true : false;}
        }
        zone3 {
            onClicked:{serveurPartie.traitement(3);
                image7.visible = (serveurPartie.estVisible(1, 3)) ? true : false;
                image8.visible = (serveurPartie.estVisible(2, 3)) ? true : false;
        }
        }
        zone4 {
            onClicked:{serveurPartie.traitement(4);
                image9.visible = (serveurPartie.estVisible(1, 4)) ? true : false;
                image10.visible = (serveurPartie.estVisible(2, 4)) ? true : false;
        }
        }
        zone5 {
            onClicked:{serveurPartie.traitement(5);
                image11.visible = (serveurPartie.estVisible(1, 5)) ? true : false;
                image12.visible = (serveurPartie.estVisible(2, 5)) ? true : false;
        }
        }
        zone6 {
            onClicked:{serveurPartie.traitement(6);
                image13.visible = (serveurPartie.estVisible(1, 6)) ? true : false;
                image14.visible = (serveurPartie.estVisible(2, 6)) ? true : false;
        }
        }
        zone7 {
            onClicked:{serveurPartie.traitement(7);
                image15.visible = (serveurPartie.estVisible(1, 7)) ? true : false;
                image16.visible = (serveurPartie.estVisible(2, 7)) ? true : false;
        }
        }
        zone8 {
            onClicked:{serveurPartie.traitement(8);
                image17.visible = (serveurPartie.estVisible(1, 8)) ? true : false;
                image18.visible = (serveurPartie.estVisible(2, 8)) ? true : false;
        }
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
