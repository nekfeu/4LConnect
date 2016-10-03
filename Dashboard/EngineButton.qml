import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Button {
    id: cmdQuit
    width: 130
    height: 130
    style: ButtonStyle {
        background: Rectangle {
            border.color:"#19d5ff"
            border.width: 2
            radius: 65
            color: control.pressed ? "#505050" : "#202020"
        }
        label: Text {
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 16
            color: "#19d5ff"
            text: control.text
      }
    }
  }
