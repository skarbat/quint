import QtQuick 2.0
import QtQuick.Layouts 1.1

Item {
    property real time: parent.time
    property variant animals: [ "camel", "dog1", "girafe", "sun", "tree", "cloud" ]
    width: 300
    height: 300

    Rectangle {
        anchors.fill: parent
        color: "light blue"
    }

  GridLayout {
    id: butterflys
    columns:3
    x: 200
    Repeater {
         model: animals.length
         Image {
          id: animal
          source: "examples/clipart/" + animals[index] + ".png"
          sourceSize: Qt.size(parent.width, parent.height)
          smooth: true
          visible: true
          transform: Rotation { axis.y: 80; axis.x: 80; angle: 15*time}
         }
   }
  }
}
