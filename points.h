#ifndef POINTS_H
#define POINTS_H


class Points
{
public:
    Points(int X, int Y);
    int getx() ;
    int gety();
    bool colineaires(Points *a, Points *b);
private :
    int x;
    int y;
};

#endif // POINTS_H
