#ifndef POINTS_H
#define POINTS_H


class Points // la classe Points comprend les coordonnées des 9 noeuds du plateau
{
public:
    Points(int X, int Y);
    int getx(); // renvoie simplement les coordonnées
    int gety();
    bool colineaires(Points *a, Points *b); // permet de tester la colinéarités de trois instances de la classe Point (pour les tests de victoire)
private :
    int x;
    int y;
};

#endif // POINTS_H
