import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    width: 300
    height: 300

    Image {
        id: original
        x: 600
        y: 300
        source: "examples/clipart/camel.png"
        smooth: true
        visible: true

        RotationAnimation on rotation {
         loops: Animation.Infinite
         from: 0
         to: 360
        }
    }
}
