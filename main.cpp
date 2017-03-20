#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QApplication>
#include "partie.h"
#include "points.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    Partie* P = new Partie();
    return app.exec();

}
