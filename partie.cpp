#include <vector>
#include <algorithm>
#include <iostream>
#include "partie.h"
#include "points.h"
using namespace std;

Partie::Partie()
{
    noJoueur = 1; // cette variable contient le numéro du joueur dont c'est le tour
    deplacement = false; // vaut true lorsque l'on est en phase de déplacement après avoir sélectionné le pion à déplacer
    score1 = 0; // initialisation des scores
    score2 = 0;
    depart = 0; // indiquera la case de départ du pion déplacé en phase de déplacement

    plateau = new vector<Points*>; // on créé une liste contenant les positions des noeuds du plateau
    pions1 = new vector<int>; // cette liste contient l'indice des pions du joueur 1 dans la liste plateau
    pions2 = new vector<int>; // idem joueur 2
    accessibles[0] = new vector<int>; // on créé une liste des positions accessibles à partir de chaque noeud
    accessibles[1] = new vector<int>; // on fait ceci pour chacun des noeuds
    accessibles[2] = new vector<int>;
    accessibles[3] = new vector<int>;
    accessibles[4] = new vector<int>;
    accessibles[5] = new vector<int>;
    accessibles[6] = new vector<int>;
    accessibles[7] = new vector<int>;
    accessibles[8] = new vector<int>;
    plateau->push_back(new Points(1,1)); // création des noeuds du plateau avec leur coordonnées
    plateau->push_back(new Points(1,2));
    plateau->push_back(new Points(1,3));
    plateau->push_back(new Points(2,1));
    plateau->push_back(new Points(2,2));
    plateau->push_back(new Points(2,3));
    plateau->push_back(new Points(3,1));
    plateau->push_back(new Points(3,2));
    plateau->push_back(new Points(3,3));
    accessibles[0]->push_back(1); // on inscrit dans la liste dédiée les voisins du noeuds 0.
    accessibles[0]->push_back(3);
    accessibles[0]->push_back(4);
    accessibles[1]->push_back(0); //puis du noeuds 1, etc.
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

void Partie::afficher(){
    // à voir avec Enoal pour le qml
}

void Partie::changerTour(){
    noJoueur = 3-noJoueur;
    // Rafraichir page + message dans une fenetre ? à voir avec Enoal
}

int Partie::getNumeroJoueur(){
    return noJoueur; // classique
}

void Partie::testVictoire(){ // conditions de victoire :
    if (this->taillePions(this->getNumeroJoueur())==3){ // si le joueur actuel à bien posé ses 3 pions sur le plateau
        if (this->getNumeroJoueur()==1){
            if (plateau->at(pions1->at(0))->colineaires(plateau->at(pions1->at(1)), plateau->at(pions1->at(2)))){
                //afficher message victoire
                score1 = score1 +1 ;
            }
        }
        if (this->getNumeroJoueur()==2){
            if (plateau->at(pions2->at(0))->colineaires(plateau->at(pions2->at(1)), plateau->at(pions2->at(2)))){
                //afficher message victoire
                score2 = score2 + 1 :
            }
        }
    }
    this->changerTour(); // change de joueur et rafraichit la page pour mettre à jour l'affichage des scores
    
}

void Partie::reset(){ // nouvelle partie :
    noJoueur = 1 ; // on réinitialise tous les paramètres sauf le score
    deplacement = false ;
    pions1 = new vector<int>;
    pions2 = new vector<int>;
}

bool Partie::getDeplacement(){ // true si phase de déplacement, false si phase de placement
    return deplacement ;
}

void Partie::setDeplacement(bool b){
    deplacement = b ; // classique
}

int Partie::getDepart(){ // donne la position de départ du jeton si phase de déplacement
    return depart ;
}

void Partie::setDepart(int i){
    depart = i; // classique
}

void Partie::ajouterPions(int p, int i){ // lorsque le joueur p pose son pions sur la case i du plateau :
    if (p==1){
        pions1->push_back(i); // on ajoute simplement le pions i à la liste des pions du joueur
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

bool Partie::contient(int p, int i){ // le joueur p a-t-il un pion sur la case i ?
    if (p==1){
        return (std::find(pions1->begin(), pions1->end(), i) != pions1->end()) ;
    }
    else if (p==2){
        return (std::find(pions2->begin(), pions2->end(), i) != pions2->end()) ;
    }
    return false ;
}

int Partie::getPions(int p, int i){ // donne le pion en i ème position dans la liste des pions du joueur
    if (p==1){
        return pions1->at(i) ;
    }
    else{
        return pions2->at(i) ;
    }
}

void Partie::removePions(int p, int i){ // permet de supprimer le pion enregistré à l'indice i de la liste des pions du joueur p
    if (p==1){
        pions1->erase(pions1->begin()+i);
    }
    if (p==2){
        pions2->erase(pions2->begin()+i);
    }
}

void Partie::resetScore(){ // remise à zéro des scores
    score1 = 0;
    score2 = 0;
}

void Partie::traitement(int i){ //cette fonction est celle qui doit être appelée à chaque clic sur une zone. Elle prend en argument i le numéro du noeud sur lequel le clic a été effectué.
// Enoal -> Comment appeler cette fonction depuis le fichier qml ?
    // phase de placement des pions
    if (this->getNumeroJoueur()==1 && this->taillePions(1)<3 && this->contient(2,i)==false && this->contient(1,i)==false && this->getDeplacement()==false){ // cela signifie : c'est le tour du joueur 1, tous ses pions ne sont pas placés et il a cliqué sur un noeud inoccupé
        this->ajouterPions(1,i); // on ajoute donc son pion sur la case considéré
        this->testVictoire(); // on fait un test de victoire, qui va aussi appeler la méthode changerTour()
    }
    else if (this->getNumeroJoueur()==2 && this->taillePions(2)<3 && this->contient(2,i)==false && this->contient(1,i)==false && this->getDeplacement()==false){ // idem joueur 2
        this->ajouterPions(2,i);
        this->testVictoire();
    }
    // phase de déplacement : sélection du pion à déplacer
    else if (this->getNumeroJoueur()==1 && this->contient(1,i) && this->taillePions(1)==3){ // cela signifie : le joueur 1 a posé tous ses pions et a cliqué sur l'un d'eux (pour le déplacer)
        for (int j=0 ; j<this->taillePions(1); j++){
            if (this->getPions(1,j)==i){ // on recherche l'indice du noeud dans la liste des pions du joueur pour pouvoir le supprimer
                this->removePions(1,j);
                this->setDeplacement(true); // on indique bien que l'on passe en phase de déplacement avec le booléen deplacement
                this->setDepart(i); // on met aussi à jour la variable depart qui nous permettra d'accéder aux voisins accessibles
            }
        }
    }
    else if (this->getNumeroJoueur()==2 && this->contient(2,i) && this->taillePions(2)==3){ // idem joueur 2
        for (int j=0 ; j<this->taillePions(2); j++){
            if (this->getPions(2,j)==i){
                this->removePions(2,j);
                this->setDeplacement(true);
                this->setDepart(i);
            }
        }
    }
    // phase de déplacement : pose du pion déplacé
    else if (this->getDeplacement() && this->getNumeroJoueur()==1){ // le joueur 1 doit déplacer le pion qu'il a sélectionné
        for (int k = 0 ; k<accessibles[this->getDepart()]->size(); k++){ // on parcourt les noeuds accessibles depuis la position de départ du pion
            if (i==accessibles[depart]->at(k) && this->contient(2,i)==false && this->contient(1,i)==false ){ // si le noeud en question est un voisin libre
                this->ajouterPions(1,i); // on met à jour la liste des pions du joueur
                this->setDeplacement(false); // on repasse en phase de sélection
                this->testVictoire(); // fin du tour
            }
        }
    }
    else if (this->getDeplacement() && this->getNumeroJoueur()==2){ // idem joueur 2
        for (int k = 0 ; k<accessibles[depart]->size(); k++){
            if (i==accessibles[depart]->at(k) && this->contient(2,i)==false && this->contient(1,i)==false){
                this->ajouterPions(2,i);
                this->setDeplacement(false);
                this->testVictoire();
            }
        }
    }
}

