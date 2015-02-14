import QtQuick 2.0
import QtQuick.Layouts 1.1

Item {
  property real time: parent.time

  Rectangle {
    anchors.fill: parent
    color: "light blue"

    Image {
          id: trees
	  x:1200 ; y: 800
          source: "examples/clipart/tree.png"
          smooth: true
    }
    PropertyAnimation {target: trees; property: "y"; to: 10; duration: 1000; easing.type: Easing.OutInQuart; running: true }

    Image {
          id: lion
	  x:0 ; y: 500
          source: "examples/clipart/camel.png"
          smooth: true
    }
    PropertyAnimation {target: lion; property: "x"; to: 700; duration: 1000; easing.type: Easing.OutIn; running: true }
    PropertyAnimation {target: lion; property: "y"; to: 250; duration: 1000; easing.type: Easing.OutInQuint; running: true }

    Image {
          id: sun
	  x:0 ; y: 900
          source: "examples/clipart/sun.png"
          smooth: true
    }
    PropertyAnimation {target: sun; property: "x"; to: 900; duration: 1000; easing.type: Easing.OutQuint; running: true }
    PropertyAnimation {target: sun; property: "y"; to: 10; duration: 1000; easing.type: Easing.OutIn; running: true }
  }
}
