import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    width: 300
    height: 300

    Image {
        id: original
        x: 100
        source: "examples/clipart/lion.png"
        smooth: true
        visible: true
    }

    Image {
        id: lion
        x: 800
        source: "examples/clipart/lion.png"
        smooth: true
        visible: false
    }

    DropShadow {
        anchors.fill: lion
        horizontalOffset: 6
        verticalOffset: 6
        radius: 10.0
        samples: 32
        color: "#80000000"
        source: lion
    }
}
