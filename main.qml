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
                width: 400
                height: 60
                spacing: 5
                //layoutDirection: Qt.RightToLeft

                Repeater{
                    id: repeater
                    model:5
                    height: parent.height

                    MyRectangle{
                        function getOpacity(index){
                            var listOpacity = [1, 0.8, 0.6, 0.4, 0.2];
                            return listOpacity[index];
                        }
                        width: 50
                        height: 50
                        border.width: 1
                        Text{
                            text: ""+(index+1)
                            anchors.centerIn: parent
                        }
                        opacity: getOpacity(index)
                    }
                }
            }

        }

    }
}
