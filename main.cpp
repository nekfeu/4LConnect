#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <iostream>
#include <QDateTime>
#include <QTimer>
#include "mainwindow.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    MainWindow *mainWindow = new MainWindow();

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    qmlRegisterType<MainWindow>("MyLib", 1, 0, "MainWindow");

    mainWindow->root_view = engine.rootObjects().first();

    QTimer *timer = new QTimer(mainWindow);
    mainWindow->connect(timer, SIGNAL(timeout()), mainWindow, SLOT(updateTime()));
    timer->start(1000);

    return app.exec();
}
