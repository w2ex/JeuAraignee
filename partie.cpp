#include <vector>
#include <algorithm>
#include "partie.h"
#include "points.h"
#include <iostream>
#include <sstream>
using namespace std;

Partie::Partie()
{
    noJoueur = 1;
    deplacement = false;
    score1 = 0;
    score2 = 0;
    depart = 0;

    plateau = new vector<Points*>;
    pions1 = new QList<int>;
    pions2 = new QList<int>;
    accessibles[0] = new vector<int>;
    accessibles[1] = new vector<int>;
    accessibles[2] = new vector<int>;
    accessibles[3] = new vector<int>;
    accessibles[4] = new vector<int>;
    accessibles[5] = new vector<int>;
    accessibles[6] = new vector<int>;
    accessibles[7] = new vector<int>;
    accessibles[8] = new vector<int>;
    plateau->push_back(new Points(1,1)); // création des noeuds du plateau
    plateau->push_back(new Points(1,2));
    plateau->push_back(new Points(1,3));
    plateau->push_back(new Points(2,1));
    plateau->push_back(new Points(2,2));
    plateau->push_back(new Points(2,3));
    plateau->push_back(new Points(3,1));
    plateau->push_back(new Points(3,2));
    plateau->push_back(new Points(3,3));
    accessibles[0]->push_back(1); // on crée une liste de listes : la première liste contient les voisins du premier noeud, la seconde du second etc...
    accessibles[0]->push_back(3);
    accessibles[0]->push_back(4);
    accessibles[1]->push_back(0);
    accessibles[1]->push_back(2);
    accessibles[1]->push_back(4);
    accessibles[2]->push_back(1);
    accessibles[2]->push_back(4);
    accessibles[2]->push_back(5);
    accessibles[3]->push_back(0);
    accessibles[3]->push_back(4);
    accessibles[3]->push_back(6);
    accessibles[4]->push_back(0);
    accessibles[4]->push_back(1);
    accessibles[4]->push_back(2);
    accessibles[4]->push_back(3);
    accessibles[4]->push_back(5);
    accessibles[4]->push_back(6);
    accessibles[4]->push_back(7);
    accessibles[4]->push_back(8);
    accessibles[5]->push_back(2);
    accessibles[5]->push_back(4);
    accessibles[5]->push_back(8);
    accessibles[6]->push_back(3);
    accessibles[6]->push_back(4);
    accessibles[6]->push_back(7);
    accessibles[7]->push_back(6);
    accessibles[7]->push_back(4);
    accessibles[7]->push_back(8);
    accessibles[8]->push_back(5);
    accessibles[8]->push_back(4);
    accessibles[8]->push_back(7);
}



void Partie::changerTour(){
    cout << "Fin du joueur "<<noJoueur<<endl;
    noJoueur = 3-noJoueur;
    cout << "Debut du tour du joueur "<<noJoueur<<endl;
    actionOccured();
    // Rafraichir page + message dans une fenetre ?
}

int Partie::getNumeroJoueur(){
    return noJoueur;
}

void Partie::testVictoire(){
    if (this->taillePions(this->getNumeroJoueur())==3){
        if (this->getNumeroJoueur()==1){
            if (plateau->at(pions1->at(0))->colineaires(plateau->at(pions1->at(1)), plateau->at(pions1->at(2)))){
                cout << "victoire";
            }
        }
        if (this->getNumeroJoueur()==2){
            if (plateau->at(pions2->at(0))->colineaires(plateau->at(pions2->at(1)), plateau->at(pions2->at(2)))){
                cout << "victoire";
            }
        }
    }
}

void Partie::reset(){
    noJoueur = 1 ;
    deplacement = false ;
    pions1 = new QList<int>;
    pions2 = new QList<int>;
    actionOccured();
}

bool Partie::getDeplacement(){ // true si phase de déplacement, false si phase de placement
    return deplacement ;
}

void Partie::setDeplacement(bool b){
    deplacement = b ;
}

int Partie::getDepart(){ // donne la position de départ du jeton si phase de déplacement
    return depart ;
}

void Partie::setDepart(int i){
    depart = i;
}

void Partie::ajouterPions(int p, int i){
    if (p==1){
        pions1->push_back(i);
    }
    else if (p==2){
        pions2->push_back(i);
    }
}

int Partie::taillePions(int p){ // renvoie le nombre de jetons du joueur p posés sur le plateau
    if (p==1){
        return pions1->size();
    }
    else if (p==2){
        return pions2->size();
    }
    return 0 ;
}

bool Partie::contient(int p, int i){
    if (p==1){
        return (std::find(pions1->begin(), pions1->end(), i) != pions1->end()) ;
    }
    else if (p==2){
        return (std::find(pions2->begin(), pions2->end(), i) != pions2->end()) ;
    }
    return false ;
}

int Partie::getPions(int p, int i){
    if (p==1){
        return pions1->at(i) ;
    }
    else if (p==2){
        return pions2->at(i) ;
    }
    else{
        return 0 ;
    }
}

void Partie::removePions(int p, int i){
    if (p==1){
        pions1->erase(pions1->begin()+i);
    }
    if (p==2){
        pions2->erase(pions2->begin()+i);
    }
}

void Partie::resetScore(){
    score1 = 0;
    score2 = 0;
}

void Partie::traitement(int i){
    // phase de placement des pions
    if (this->getNumeroJoueur()==1 && this->taillePions(1)<3 && this->contient(2,i)==false && this->contient(1,i)==false && this->getDeplacement()==false){
        cout << "tour joueur 1 phase 1" << endl;
        this->ajouterPions(1,i);
        this->testVictoire();
        this->testVictoire();
        Partie::changerTour();
    }
    else if (this->getNumeroJoueur()==2 && this->taillePions(2)<3 && this->contient(2,i)==false && this->contient(1,i)==false && this->getDeplacement()==false){
        cout << "tour joueur 2 phase 1" << endl;
        this->ajouterPions(2,i);
        this->testVictoire();
        this->testVictoire();
        Partie::changerTour();
    }
    // phase de déplacement : sélection du pion à déplacer
    else if (this->getNumeroJoueur()==1 && this->contient(1,i) && this->taillePions(1)==3 && this->getDeplacement()==false){
        cout << "tour joueur 1 phase 2" << endl;
        for (int j=0 ; j<this->taillePions(1); j++){
            if (this->getPions(1,j)==i){
                this->removePions(1,j);
                this->setDeplacement(true);
                this->setDepart(i);
            }
        }
    }
    else if (this->getNumeroJoueur()==2 && this->contient(2,i) && this->taillePions(2)==3 && this->getDeplacement()==false){
        cout << "tour joueur 2 phase 2" << endl;
        for (int j=0 ; j<this->taillePions(2); j++){
            if (this->getPions(2,j)==i){
                this->removePions(2,j);
                this->setDeplacement(true);
                this->setDepart(i);
            }
        }
    }
    // phase de déplacement : pose du pion déplacé
    else if (this->getDeplacement() && this->getNumeroJoueur()==1 && this->getDeplacement()){
        cout << "tour joueur 1 phase 3" << endl;
        for (int k = 0 ; k<accessibles[depart]->size(); k++){
            if (i==accessibles[depart]->at(k) && this->contient(2,i)==false && this->contient(1,i)==false){
                this->ajouterPions(1,i);
                this->setDeplacement(false);
                this->testVictoire();
                Partie::changerTour();
            }
        }
    }
    else if (this->getDeplacement() && this->getNumeroJoueur()==2 && this->getDeplacement()){
        cout << "tour joueur 2 phase 3" ;
        for (int k = 0 ; k<accessibles[depart]->size(); k++){
            if (i==accessibles[depart]->at(k) && this->contient(2,i)==false && this->contient(1,i)==false){
                this->ajouterPions(2,i);
                this->setDeplacement(false);
                this->testVictoire();
                Partie::changerTour();
            }
        }
    }
    cout << getNumeroJoueur() << noJoueur << endl;
}

bool Partie::estVisible(int p, int j){
        bool b;
        b = false; int i;
        for (i=0; i<Partie::taillePions(p); i++){
          b = b || (Partie::getPions(p,i)==j);
        }
        return b;
}

QString Partie::getScore (int p) {
    if (p==1){
        string Result;//string which will contain the result

        stringstream convert; // stringstream used for the conversion

        convert << score1;//add the value of Number to the characters in the stream

        Result = convert.str();//set Result to the content of the stream
        QString Result1;
        Result1 = QString::fromStdString(Result);
        return Result1;
    }
    if (p==2){
        string Result;//string which will contain the result

        stringstream convert; // stringstream used for the conversion

        convert << score2;//add the value of Number to the characters in the stream

        Result = convert.str();//set Result to the content of the stream
        QString Result1;
        Result1 = QString::fromStdString(Result);
        return Result1;
    }
}
