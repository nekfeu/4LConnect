import QtQuick 2.6
import QtQuick.Controls 2.0

ProgressBar {
    id: control
    value: 0.5

    background: Rectangle {
        width: 200
        height: 10
        color: "#ffffff"
    }

    contentItem: Item {
        implicitWidth: 200
        implicitHeight: 10

        Rectangle {
            width: control.visualPosition * 200
            height: parent.height
            color: "#00c0ff"
        }
    }
}
