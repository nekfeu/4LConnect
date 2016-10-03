#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QObject>
#include <QDebug>
#include <QDateTime>
#include <QTimer>

class MainWindow : public QObject {
    Q_OBJECT
public:
    QObject *root_view;
public:
    MainWindow();
public slots:
    void updateTime();
};

#endif // MAINWINDOW_H
