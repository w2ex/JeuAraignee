#include "points.h"

Points::Points(int X, int Y)
{
    x=X;
    y=Y;
}

Points::getx(){
    return x;
}

Points::gety(){
    return y;
}

bool Points::colineaires(Points *a, Points *b){
    if ((a->gety()==b->gety()) && (a->gety()==y)){
                return true;
    }
    else if(((a->getx()-x))/((float)(a->gety()-y))==((a->getx()-b->getx())/(float)(a->gety()-b->gety()))){
        return true;
    }
    return false;
}
