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
                if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur());
                    message.open()};
                }
        }
        zone1 {
            onPressed:{serveurPartie.traitement(1);
                image3.visible = (serveurPartie.estVisible(1, 1)) ? true : false;
                image4.visible = (serveurPartie.estVisible(2, 1)) ? true : false;
                if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur()); message.open()};
                }
        }
        zone2 {
            onClicked:{serveurPartie.traitement(2);
            image5.visible = (serveurPartie.estVisible(1, 2)) ? true : false;
            image6.visible = (serveurPartie.estVisible(2, 2)) ? true : false;
            if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur()); message.open()};
            }
        }
        zone3 {
            onClicked:{serveurPartie.traitement(3);
                image7.visible = (serveurPartie.estVisible(1, 3)) ? true : false;
                image8.visible = (serveurPartie.estVisible(2, 3)) ? true : false;
                if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur()); message.open()};
        }
        }
        zone4 {
            onClicked:{serveurPartie.traitement(4);
                image9.visible = (serveurPartie.estVisible(1, 4)) ? true : false;
                image10.visible = (serveurPartie.estVisible(2, 4)) ? true : false;
                if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur()); message.open()};
        }
        }
        zone5 {
            onClicked:{serveurPartie.traitement(5);
                image11.visible = (serveurPartie.estVisible(1, 5)) ? true : false;
                image12.visible = (serveurPartie.estVisible(2, 5)) ? true : false;
                if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur()); message.open()};
        }
        }
        zone6 {
            onClicked:{serveurPartie.traitement(6);
                image13.visible = (serveurPartie.estVisible(1, 6)) ? true : false;
                image14.visible = (serveurPartie.estVisible(2, 6)) ? true : false;
                if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur()); message.open()};
        }
        }
        zone7 {
            onClicked:{serveurPartie.traitement(7);
                image15.visible = (serveurPartie.estVisible(1, 7)) ? true : false;
                image16.visible = (serveurPartie.estVisible(2, 7)) ? true : false;
                if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur()); message.open()};
        }
        }
        zone8 {
            onClicked:{
                serveurPartie.traitement(8);
                image17.visible = (serveurPartie.estVisible(1, 8)) ? true : false;
                image18.visible = (serveurPartie.estVisible(2, 8)) ? true : false;
                if (serveurPartie.testVictoire()) {serveurPartie.augmenterScore(3-serveurPartie.getNumeroJoueur()); message.open()}
                ;
        }
        }
        button1{
               onClicked : { serveurPartie.resetScore();
                   text3.text = (serveurPartie.getScore(1));
                   text4.text = (serveurPartie.getScore(2));
               }

        }
        button{
               onClicked : { serveurPartie.reset();
               image1.visible = false;
               image2.visible = false;
               image3.visible = false;
               image4.visible = false;
               image5.visible = false;
               image6.visible = false;
               image7.visible = false;
               image8.visible = false;
               image9.visible = false;
               image10.visible = false;
               image11.visible = false;
               image12.visible = false;
               image13.visible = false;
               image14.visible = false;
               image15.visible = false;
               image16.visible = false;
               image17.visible = false;
               image18.visible = false;
            }
        }
        text3{
             text: qsTr(serveurPartie.getScore(1))
       }
        text4{
            text: qsTr(serveurPartie.getScore(2))
       }
        message{
            title : "Victoire"
            text : "Félicitations, vous avez gagné"
            onAccepted :  {serveurPartie.reset();
                image1.visible = false;
                image2.visible = false;
                image3.visible = false;
                image4.visible = false;
                image5.visible = false;
                image6.visible = false;
                image7.visible = false;
                image8.visible = false;
                image9.visible = false;
                image10.visible = false;
                image11.visible = false;
                image12.visible = false;
                image13.visible = false;
                image14.visible = false;
                image15.visible = false;
                image16.visible = false;
                image17.visible = false;
                image18.visible = false;

                text3.text = (serveurPartie.getScore(1));
                text4.text = (serveurPartie.getScore(2));
            }
        }

}
}
