import QtQuick 2.0


Rectangle {
     width: 300
     height: 300
     color: "darkGreen"
     property var theimage: "examples/clipart/girafe.png"

     Image {
       width: 200; height: width
       source: theimage
     }

     Image {
         id: textLabel
         source: theimage
         anchors.centerIn: parent
         width: 200

       SequentialAnimation on width {
         loops: Animation.Infinite

         PauseAnimation { duration: 1000 }
         NumberAnimation { to: 1000; duration: 700; easing.type: Easing.InElastic }
         PauseAnimation { duration: 1000 }
         NumberAnimation { to: 200; duration: 700; easing.type: Easing.InElastic }
       }
     }

     ShaderEffect {
         property variant source: ShaderEffectSource { sourceItem: textLabel; hideSource: true }
         property real wiggleAmount: 0.005
         anchors.fill: textLabel

         fragmentShader: "
         varying highp vec2 qt_TexCoord0;
         uniform sampler2D source;
         uniform highp float wiggleAmount;
         void main(void)
         {
             highp vec2 wiggledTexCoord = qt_TexCoord0;
             wiggledTexCoord.s += sin(4.0 * 3.141592653589 * wiggledTexCoord.t) * wiggleAmount;
             gl_FragColor = texture2D(source, wiggledTexCoord.st);
         }
         "
     }
 }
