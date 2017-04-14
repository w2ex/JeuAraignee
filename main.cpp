#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QApplication>
#include <QQmlContext>
#include "partie.h"
#include "points.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Partie partie;

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("serveurPartie", &partie);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();

}
