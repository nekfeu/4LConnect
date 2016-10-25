import QtQuick 2.6
import QtQuick.Window 2.0
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.0


ApplicationWindow {
    visible: true
    width: 1024
    height: 600
    color: "#191919"
    Material.theme: Material.Dark
    Material.accent: Material.Orange

    title: qsTr("4LDashboard")

    SwipeView {
        id: swipeView
        anchors.leftMargin: 254
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
            id: page11
            x: 0
            Material.theme: Material.Dark
            Material.accent: Material.Orange
            y: 0
            width: 769
            height: 600

            Label {
                id: label8
                x: 68
                y: 460
                color: "#ffffff"
                text: qsTr("Engine temperature")
            }

            Label {
                id: label9
                x: 248
                y: 188
                width: 173
                height: 127
                color: "#ffffff"
                text: qsTr("62")
                verticalAlignment: Text.AlignTop
                horizontalAlignment: Text.AlignHCenter
                anchors.verticalCenterOffset: -52
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 100
            }

            Label {
                id: label10
                x: 385
                y: 292
                color: "#ffffff"
                text: qsTr("km/h")
                font.pointSize: 16
            }

            Label {
                id: label11
                x: 221
                y: 310
                color: "#ffffff"
                text: qsTr("Fuel level")
                font.pointSize: 16
            }

            CustomProgressBar {
                x: 221
                y: 335
            }

            Label {
                id: label12
                x: 248
                y: 184
                color: "#ffffff"
                text: qsTr("Speed")
                font.pointSize: 16
            }

            Label {
                id: label13
                x: 89
                y: 482
                width: 77
                height: 41
                color: "#ffffff"
                text: qsTr("67")
                anchors.verticalCenterOffset: -33
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 35
            }

            Label {
                id: label14
                x: 151
                y: 515
                color: "#ffffff"
                text: qsTr("°C")
            }

            Label {
                id: label15
                x: 296
                y: 460
                color: "#ffffff"
                text: qsTr("Kilometres covered")
            }

            Label {
                id: label16
                x: 316
                y: 482
                width: 77
                height: 41
                color: "#ffffff"
                text: qsTr("1452")
                anchors.verticalCenterOffset: -33
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 35
                horizontalAlignment: Text.AlignHCenter
            }

            Label {
                id: label17
                x: 378
                y: 515
                width: 15
                height: 16
                color: "#ffffff"
                text: qsTr("km")
            }

            Label {
                id: label18
                x: 578
                y: 460
                color: "#ffffff"
                text: qsTr("GPS Position")
            }

            Label {
                id: label19
                x: 528
                y: 482
                width: 178
                height: 41
                color: "#ffffff"
                text: qsTr("44.85/-0.57")
                anchors.verticalCenterOffset: -33
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 30
                horizontalAlignment: Text.AlignHCenter
            }

            Label {
                id: label20
                x: 661
                y: 515
                color: "#ffffff"
                text: qsTr("lat/long")
            }
        }

        Page {
            x: 920
            y: 0
            width: 770
            background: Rectangle {
                color: "#191919"
            }

            Switch {
                id: switch1
                x: 134
                y: 280
                text: "Outside lights"
            }


            Switch {
                id: switch2
                x: 134
                y: 342
                text: "Fog lights"
            }

            Button {
                id: button5
                x: 319
                y: 342
                text: qsTr("Horn")
            }

            Button {
                id: button6
                x: 436
                y: 342
                text: qsTr("Take picture")
            }

            Switch {
                id: switch3
                x: 134
                y: 405
                text: "Essui glace"
            }

            Button {
                id: button7
                x: 257
                y: 179
                text: qsTr("Reset km")
            }

            Label {
                id: label24
                x: 273
                y: 150
                color: "#ffffff"
                text: qsTr("100 000km")
            }

            Button {
                id: button8
                x: 319
                y: 413
                text: qsTr("Clignotant droit")
            }

            Button {
                id: button9
                x: 436
                y: 413
                text: qsTr("Clignotant gauche")
            }

            Button {
                id: button10
                x: 521
                y: 262
                text: "Minuteur"
            }

            Dial {
                id: dial1
                x: 484
                y: 66
            }
        }

        Page {
            id: page1
            x: 1754
            y: 0
            width: 770
            background: Rectangle {
                color: "#191919"
            }

            Label {
                id: label7
                x: 136
                y: 364
                color: "#ffffff"
                text: qsTr("0:45")
            }

            Slider {
                id: slider1
                x: 170
                y: 352
                width: 430
                height: 40
                value: 0.1
            }

            Label {
                id: label21
                x: 606
                y: 364
                color: "#ffffff"
                text: qsTr("3:24")
            }

            Button {
                id: button1
                x: 360
                y: 423
                width: 50
                height: 50
                text: qsTr("")
                opacity: button1.down ? 0.7 : 1
                background: Image {
                    width: 50
                    height: 50
                    source: "qrc:/assets/play-button.png"
                }
            }

            Button {
                id: button2
                x: 446
                y: 423
                width: 50
                height: 50
                text: qsTr("")
                opacity: button2.down ? 0.7 : 1
                background: Image {
                    width: 50
                    height: 50
                    source: "qrc:/assets/fast-forward.png"
                }
            }

            Button {
                id: button3
                x: 274
                y: 423
                width: 50
                height: 50
                text: qsTr("")
                rotation: 180
                opacity: button3.down ? 0.7 : 1
                background: Image {
                    width: 50
                    height: 50
                    source: "qrc:/assets/fast-forward.png"
                }
            }

            Slider {
                id: slider2
                x: 538
                y: 428
                width: 107
                height: 40
                value: 0.5
            }

            Button {
                id: button4
                x: 156
                y: 428
                width: 40
                height: 40
                text: qsTr("")
                opacity: button4.down ? 0.7 : 1
                background: Image {
                    width: 40
                    height: 40
                    source: "qrc:/assets/replay.png"
                }
            }

            Image {
                id: image1
                x: 136
                y: 252
                width: 80
                height: 80
                source: "qrc:/assets/feu-reedition.jpg"
            }

            Label {
                id: label22
                x: 229
                y: 262
                width: 405
                height: 29
                color: "#ffffff"
                text: qsTr("Nekfeu feat Doums")
                font.pointSize: 25
            }

            Label {
                id: label23
                x: 229
                y: 299
                width: 405
                height: 23
                color: "#ffffff"
                text: qsTr("La ballade du Fremont")
                font.pointSize: 18
            }

            ListView {
                id: listView1
                x: 136
                y: 108
                width: 612
                height: 110
                orientation: ListView.Horizontal
                flickableDirection: Flickable.HorizontalFlick
                model: ListModel {
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }
                    ListElement {
                        name: "Grey"
                        colorCode: "grey"
                    }
                }
                delegate: Item {
                    x: 5
                    width: 100
                    height: 80
                    Row {
                        id: row1
                        Rectangle {
                            width: 80
                            height: 80
                            color: colorCode
                        }
                        spacing: 30
                    }
                }
            }
        }

    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 254
        height: 600
        color: "#202020"

        Label {
            id: label1
            x: 17
            y: 17
            color: "#ffffff"
            text: qsTr("4L Dashboard")
            font.pointSize: 25
        }

        Label {
            objectName: "timeLabel"
            id: label2
            x: 41
            y: 78
            color: "#00d0ff"
            text: qsTr("18:01")
            font.pointSize: 30
        }

        Rectangle {
            id: rectangle2
            x: 883
            y: -172
            width: 300
            height: 300
            color: "#505050"
            rotation: -48
        }

        EngineButton {
            text: qsTr("ENGINE\nSTART")
            anchors.horizontalCenter: parent.horizontalCenter
            x: 80
            y: 456
            width: 95
            height: 99
        }

        Label {
            id: label6
            x: 41
            y: 231
            color: "#ffffff"
            text: qsTr("Outside temperature")
            font.pointSize: 16
        }

        Label {
            id: label5
            x: 41
            y: 260
            color: "#00d0ff"
            text: qsTr("26 Degrees")
            font.pointSize: 20
        }

        Label {
            objectName: "dayLabel"
            id: label4
            x: 41
            y: 142
            color: "#ffffff"
            text: qsTr("Sunday")
            font.pointSize: 16
        }

        Label {
            objectName: "dateLabel"
            id: label3
            x: 41
            y: 170
            color: "#00d0ff"
            text: qsTr("20 August 2016")
            font.pointSize: 20
        }





    }

    //    footer: TabBar {
    //        id: tabBar
    //        currentIndex: swipeView.currentIndex
    //        x: 300
    //        width: 724

    //        background: Rectangle {
    //        }
    //        TabButton {
    //            text: qsTr("Car data")
    //        }
    //        TabButton {
    //            text: qsTr("Controls")
    //        }
    //        TabButton {
    //            text: qsTr("Music")
    //        }
    //    }
}
