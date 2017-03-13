#include <vector>
#include "partie.h"
#include "points.h"
using namespace std;

Partie::Partie()
{
    noJoueur = 1;
    deplacement = false;
    plateau = new vector<Points*>;
    pions1 = new vector<int*>;
    pions2 = new vector<int*>;
    accessibles[9] = new vector<int*>;
    plateau->push_back(new Points(100,100));
    plateau->push_back(new Points(100,250));
    plateau->push_back(new Points(100,400));
    plateau->push_back(new Points(250,100));
    plateau->push_back(new Points(250,250));
    plateau->push_back(new Points(250,400));
    plateau->push_back(new Points(400,100));
    plateau->push_back(new Points(400,250));
    plateau->push_back(new Points(400,400));
    

}
