#ifndef PARTIE_H
#define PARTIE_H
#include <vector>
#include "points.h"
using namespace std;

class Partie
{
public:
    Partie();
    void afficher();
    void changerTour(); // passe au tour du joueur suivant
    int getNumeroJoueur(); // donne le joueur en cours
    void testVictoire(); // teste les conditions de victoire
    void reset(); // reset la partie
    bool getDeplacement() ; // indique la phase du jeu
    void setDeplacement() ;
    void setDepart() ; // sélectionner la position de départ du pion à déplacer
    void ajouterPions(int p, int i); // ajout d'un pion en position i au joueur p
    int taillePions(int p); // indique la taille de la liste de pions du joueur p
    bool contient (int p, int i);
    int getPions(int p, int i) ; //Pour accéder à la valeur de la position enregistrée en position i dans la liste des pions du joueur p
    void removePions(int p, int i); //retire la position i de la liste des pions du joueur p
    void resetScore();
    vector<Points*>* plateau; // position des noeuds du plateau
private :
    int noJoueur; //numéro du joueur en cours
    vector<int*>* pions1; //enregistre les positions des pions du joueur 1 dans la liste 'plateau'
    vector<int*>* pions2; //idem joueur 2
    int depart; // position du pion selectionné à déplacer
    vector<int>* accessibles[9]; //positions voisines accessibles pour le pions sélectionné
    bool deplacement; // indique la phase du jeu en cours
    int score1 ;
    int score2 ;
};

#endif // PARTIE_H
