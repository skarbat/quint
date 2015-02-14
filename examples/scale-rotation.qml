Rectangle {
    anchors.fill: parent
    color: "yellow"
    property real time: parent.time

  Image {
     id: lion1
     x: parent.x + 100
     y: parent.height/3
     source: "examples/clipart/dog1.png"
     smooth: true

     transform: Rotation {
	angle: Math.sin(parent.time)*40
	origin.x: 200
	origin.y: 150
     }
  }

  Image {
     id: lion2
     x: parent.x + 600
     y: parent.height/3
     source: "examples/clipart/camel.png"
     smooth: true

     transform: Rotation {
	angle: Math.cos(parent.time)*40
	origin.x: 200
	origin.y: 150
     }
  }

  Image {
     id: lion3
     x: parent.x + 1100
     y: parent.height/3
     source: "examples/clipart/lion.png"
     smooth: true

     transform: Scale {
        xScale: 0.1 + Math.cos(parent.time)
        yScale: 0.1 + Math.cos(parent.time)
	origin.x: 200
	origin.y: 150
     }
  }

}
