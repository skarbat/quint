import QtQuick 2.0


Rectangle {
     width: 300
     height: 300
     color: "black"

     Image {
       width: 300; height: width
       source: "http://phrack.org/images/phrack-logo.jpg"
     }

     Image {
         id: textLabel
         source: "http://phrack.org/images/phrack-logo.jpg"
         anchors.centerIn: parent
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
