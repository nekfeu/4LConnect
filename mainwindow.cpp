#include "mainwindow.h"

void MainWindow::updateTime()
{
    QObject *timeLabel = root_view->findChild<QObject*>("timeLabel");
    QObject *dateLabel = root_view->findChild<QObject*>("dateLabel");
    QObject *dayLabel = root_view->findChild<QObject*>("dayLabel");

    QTime time = QTime::currentTime();
    QDate date = QDate::currentDate();

    dayLabel->setProperty("text", date.toString("dddd"));
    timeLabel->setProperty("text", time.toString("hh:mm"));
    dateLabel->setProperty("text", date.toString("d MMMM yyyy"));
}

MainWindow::MainWindow()
{
}
