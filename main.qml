import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    id: root

    Column{



        Row{
            Image {
                id: img1
                source: "Image/gau.jpg"
                MouseArea{

                }
            }
            Image {
                id: img2
                source: "Image/gau.jpg"
            }
            Image {
                id: img3
                source: "Image/gau.jpg"
            }

        }
        Column{
            Row{
                Button{
                    id: btnReset
                    text: "Reset"
                    onClicked: {
                        catImg.fillMode = Image.Stretch
                        catImg.width = viewport.width
                        catImg.height = viewport.height
                        catImg.clip = false
                    }
                }

                Button{
                    id: stretch
                    text: "Stretch"
                    onClicked: {
                        catImg.fillMode = Image.Stretch
                        catImg.width = 200;
                        catImg.height = 100
                    }
                }
            }
            Rectangle{
                id: viewport
                width: root.width/2
                height: root.height/2
                AnimatedImage{
                    id: catImg
                    anchors.centerIn: parent
                    source: "Image/giphy.gif"
                }
            }
        }
    }
}
