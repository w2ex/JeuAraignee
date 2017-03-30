#include "points.h"

Points::Points(int X, int Y) // constructeur
{
    x=X;
    y=Y;
}

Points::getx(){ // classique
    return x;
}

Points::gety(){
    return y;
}

bool Points::colineaires(Points *a, Points *b){
    if ((a->gety()==b->gety()) && (a->gety()==y)){ // première condition pour éviter la division par zéro ensuite
                return true;
    }
    else if(((a->getx()-x))/((float)(a->gety()-y))==((a->getx()-b->getx())/(float)(a->gety()-b->gety()))){ // classique test de colinéarité
        return true;
    }
    return false;
}
