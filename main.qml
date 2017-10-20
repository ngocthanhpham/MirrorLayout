import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item{
        width: 464
        height: 100
        Rectangle{
            id: rectangle
            width: 400
            height: 60
            color: "yellow"

            LayoutMirroring.enabled: true
            LayoutMirroring.childrenInherit: true

            Row{
                id: row
                width: parent.width
                height: parent.height
//                layoutDirection: Qt.RightToLeft
                spacing: 5

                Repeater{
                    id: repeater
                    model:5
                    height: parent.height

                    MyRectangle{
                        width: 50
                        height: 50
                        border.width: 1

                        Text{
                            text: ""+(index+1)
                            anchors.centerIn: parent
                        }
                    }
                }
            }

        }

    }
}
