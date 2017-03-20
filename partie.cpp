#include <vector>
#include "partie.h"
#include "points.h"
using namespace std;

Partie::Partie()
{
    noJoueur = 1;
    deplacement = false;
    score1 = 0;
    score2 = 0;

    plateau = new vector<Points*>;
    pions1 = new vector<int*>;
    pions2 = new vector<int*>;
    accessibles[9] = new vector<int>;
    plateau->push_back(new Points(100,100)); // création des noeuds du plateau
    plateau->push_back(new Points(100,250));
    plateau->push_back(new Points(100,400));
    plateau->push_back(new Points(250,100));
    plateau->push_back(new Points(250,250));
    plateau->push_back(new Points(250,400));
    plateau->push_back(new Points(400,100));
    plateau->push_back(new Points(400,250));
    plateau->push_back(new Points(400,400));
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

Partie::afficher(){
    // ???
}

Partie::changerTour(){
    noJoueur = 3-noJoueur;
    // Rafraichir page + message dans une fenetre ?
}

Partie::getNumeroJoueur(){
    return noJoueur;
}

Partie::testVictoire(){

}

Partie::reset(){
    noJoueur = 1 ;
    deplacement = False ;
    pions1 = new vector<int*>;
    pions2 = new vector<int*>;
}

Partie::getDeplacement(){ // true si phase de déplacement, false si phase de placement
    return deplacement ;
}

Partie::setDeplacement(bool b){
    deplacement = b ;
}

Partie::getDepart(){ // donne la position de départ du jeton si phase de déplacement
    return depart ;
}

Partie::setDepart(int i){
    depart = i;
}

Partie::ajouterPions(int p, int i){
    if (p==1){
        pions1->push_back(i);
    }
    else if (p==2){
        pions2->push_back(i);
    }
}

Partie::taillePions(int p){ // renvoie le nombre de jetons du joueur p posés sur le plateau
    if (p==1){
        return pions1->size();
    }
    else if (p==2){
        return pion2.size();
    }
    return 0 ;
}

Partie::contient(int p, int i){
    if (p==1){
        return (std::find(pions1->begin(), pions1->end(), i) != pions1->end()) ;
    }
    else if (p==2){
        return (std::find(pions2->begin(), pions2->end(), i) != pions2->end()) ;
    }
    return False ;
}

Partie::getPions(int p, int i){
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

Partie::removePions(int p, int i){
    if (p==1){
        pions1->erase(pions1->begin()+i)
    }
    if (p==2){
        pions2->erase(pions2->begin()+i)
    }
}

Partie::resetScore(){
    score1 = 0;
    score2 = 0;
}

