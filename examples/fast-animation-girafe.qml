Item {
    id: container

    Rectangle {
	anchors.fill: parent
	color: "dark orange"
    }

    Image {
        id: girafe
        source: "examples/clipart/girafe.png"
        x: 100
        MouseArea {
            anchors.fill: parent
            onClicked: container.state == 'other' ? container.state = '' : container.state = 'other'
        }
    }
    states: [
        State { name: "other"
            PropertyChanges {
                target: girafe
                x: parent.width - 400
            }
        }
    ]

    transitions: [
        Transition {
          PropertyAnimation { properties: "x,y"; easing.type: Easing.OutBounce; duration: 1000 }
        }
    ]
}
