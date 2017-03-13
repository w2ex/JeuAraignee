#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QApplication>
#include <QLabel>
#include <QPicture>
#include <QPainter>

int main(int argc, char *argv[])
{
    //QGuiApplication app(argc, argv);

    //QQmlApplicationEngine engine;
    //engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    //return app.exec();
    QApplication a(argc, argv);
    QLabel l;
    QPicture pi;
    QPainter p(&pi);

    p.setRenderHint(QPainter::Antialiasing);
    p.setPen(QPen(Qt::black, 5, Qt::DashDotLine, Qt::RoundCap));
    p.drawLine(0, 0, 200, 200);
    p.end(); // Don't forget this line!

    l.setPicture(pi);
    l.show();
    return a.exec();

}
