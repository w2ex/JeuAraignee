import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    MainForm {
        anchors.fill: parent
        mouseArea1{
            onClicked :
            {
                Partie.traitement(1);
                print(Partie.getNumeroJoueur());
            }
        }
        mouseArea2{
            onClicked :
            {
                Partie.traitement(2);
                print(Partie.getNumeroJoueur());
            }
        }
        mouseArea3{
            onClicked :
            {
                Partie.traitement(3);
                print(Partie.getNumeroJoueur())
            }
        }
        mouseArea4{
            onClicked :
            {
                Partie.traitement(4);
                print(Partie.getNumeroJoueur());
            }
        }
        mouseArea5{
            onClicked :
            {
                Partie.traitement(5);
                print(Partie.getNumeroJoueur());
            }
        }
        mouseArea6{
            onClicked :
            {
                Partie.traitement(6);
                print(Partie.getNumeroJoueur());
            }
        }
        mouseArea7{
            onClicked :
            {
                Partie.traitement(7);
                print(Partie.getNumeroJoueur());
            }
        }
        mouseArea8{
            onClicked :
            {
                Partie.traitement(8);
                print(Partie.getNumeroJoueur());
            }
        }
        mouseArea9{
            onClicked :
            {
                Partie.traitement(9);
                print(Partie.getNumeroJoueur());
            }
        }
        button1{
            onClicked :
                Partie.reset();
        }
        button{
            onClicked :
                Qt.quit();
        }
        text3{
            text: qsTr(Partie.getScore(1))
        }
        text5{
            text: qsTr(Partie.getScore(2))
        }
        image0{
            visible: Partie.estVisible(1,1)
        }
        image1{
            visible: Partie.estVisible(2,1)
        }
        image2{
            visible: Partie.estVisible(1,2)
        }
        image3{
            visible: Partie.estVisible(2,2)
        }
        image4{
            visible: Partie.estVisible(1,3)
        }
        image5{
            visible: Partie.estVisible(2,3)
        }
        image6{
            visible: Partie.estVisible(1,4)
        }
        image7{
            visible: Partie.estVisible(2,4)
        }
        image8{
            visible: Partie.estVisible(1,5)
        }
        image9{
            visible: Partie.estVisible(2,5)
        }
        image10{
            visible: Partie.estVisible(1,6)
        }
        image11{
            visible: Partie.estVisible(2,6)
        }
        image12{
            visible: Partie.estVisible(1,7)
        }
        image13{
            visible: Partie.estVisible(2,7)
        }
        image14{
            visible: Partie.estVisible(1,8)
        }
        image15{
            visible: Partie.estVisible(2,8)
        }
        image16{
            visible: Partie.estVisible(1,9)
        }
        image17{
            visible: Partie.estVisible(2,9)
        }
        }
}



