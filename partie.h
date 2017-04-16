#ifndef PARTIE_H
#define PARTIE_H
#include <vector>
#include "points.h"
#include <QObject>
using namespace std;

class Partie : public QObject
{
    Q_OBJECT
public:
    Partie();
    void afficher();
    void changerTour(); // passe au tour du joueur suivant
    Q_INVOKABLE int getNumeroJoueur(); // donne le joueur en cours
    Q_INVOKABLE bool testVictoire(); // teste les conditions de victoire
    Q_INVOKABLE void reset(); // reset la partie
    bool getDeplacement() ; // indique la phase du jeu
    void setDeplacement(bool b) ;
    void setDepart(int i) ; // sélectionner la position de départ du pion à déplacer
    int getDepart();
    void ajouterPions(int p, int i); // ajout d'un pion en position i au joueur p
    int taillePions(int p); // indique la taille de la liste de pions du joueur p
    bool contient (int p, int i);
    int getPions(int p, int i) ; //Pour accéder à la valeur de la position enregistrée en position i dans la liste des pions du joueur p
    void removePions(int p, int i); //retire la position i de la liste des pions du joueur p
    Q_INVOKABLE void resetScore();
    vector<Points*>* plateau; // position des noeuds du plateau
    Q_INVOKABLE void traitement(int i);
    Q_INVOKABLE bool estVisible(int p, int j);
    Q_INVOKABLE QString getScore(int p);
    Q_INVOKABLE void augmenterScore(int i);

signals :
    void actionOccured();

private :
    int noJoueur; //numéro du joueur en cours
    QList<int>* pions1; //enregistre les positions des pions du joueur 1 dans la liste 'plateau'
    QList<int>* pions2; //idem joueur 2
    int depart; // position du pion selectionné à déplacer
    vector<int>* accessibles[9]; //positions voisines accessibles pour le pions sélectionné
    bool deplacement; // indique la phase du jeu en cours
    int score1 ;
    int score2 ;
};

#endif // PARTIE_H
