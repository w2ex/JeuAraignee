#ifndef TRACE_H
#define TRACE_H

class Trace : public QWidget
{
protected:
    void paintEvent(QPaintEvent *event)
    {
        QPainter painter(this);
        painter.setPen(QPen(Qt::black, 12, Qt::DashDotLine, Qt::RoundCap));
        painter.drawLine(0, 0, 200, 200);
    }
};

#endif // TRACE_H
