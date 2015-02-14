Item {
    id: container

    Image {
        id: rect
        source: 'examples/clipart/sun.png'
        width: 300
        height: 300

        MouseArea {
            anchors.fill: parent
            onClicked: container.state == 'other' ? container.state = '' : container.state = 'other'
        }
    }
    states: [
        // This adds a second state to the container where the rectangle is farther to the right
        State { name: "other"
            PropertyChanges {
                target: rect
                x: 800
            }
        }
    ]
    transitions: [
        // This adds a transition that defaults to applying to all state changes
        Transition {
            // This applies a default NumberAnimation to any changes a state change makes to x or y properties
            NumberAnimation { properties: "x,y" }
        }
    ]
}
