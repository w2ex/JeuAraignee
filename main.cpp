#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QApplication>
#include "partie.h"
#include "points.h"
#include <QtQml>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;



    Partie* P = new Partie();
    engine.rootContext()->setContextProperty("Partie", P);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();

}
