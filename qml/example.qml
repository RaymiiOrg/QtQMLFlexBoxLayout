import QtQuick 2.5
import QtQuick.Window 2.0
import QtQuick.Controls 2.15

Window {
    visible: true
    height: 400
    width: 675
    function getRandomRgb() {
      var num = Math.round(0xffffff * Math.random());
      var r = num >> 16;
      var g = num >> 8 & 255;
      var b = num & 255;
      return Qt.rgba(r,g,b,1);
    }

    Rectangle {
        anchors.fill: parent
        color: "cyan"
        Flickable {
            anchors.fill: parent
            contentHeight: flex.contentHeight
            contentWidth: parent.width
            Flex {
                id: flex
                width: parent.width
                autoHeight: true
                flexDirection: "row"
                flexWrap: "wrap"
                justifyContent: "center"
                alignItems: "center"
                alignSelf: "auto"
                alignContent: "flexStart"
                Repeater {
                    model: 250
                    Rectangle { color: "#"+Math.floor(Math.random()*16777215).toString(16); height: 80 ; width: 80}
                }
            }
        }
    }
}
