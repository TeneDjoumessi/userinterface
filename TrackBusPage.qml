import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Page {
    //   anchors.fill: parent
       id:homePage
       header: ToolBar
       {
           height:40
           RowLayout{
              anchors.fill: parent
           TextField {
               placeholderText: "Enter bus matricule"
//                    horizontalAlignment: Text.AlignHCenter
               implicitWidth: 500
               color: "black"
               font.pointSize: 13
               Layout.fillWidth: true
               validator: RegExpValidator {}
               background: Rectangle {
                   implicitWidth: 150
                   implicitHeight: 30
                   radius: 4
           }
          }
               ToolButton
               {
                 icon.source: "icon/search_500px.png"
               }

       }
       }
      /* Row{
        anchors.fill: parent
        Rectangle {
            id: rectone
            anchors.fill: parent
            width: parent.width / 5
            height: parent.height
            color: "blue"

            Rectangle {
                color: "#cac1c1"
                width: parent.width
                height: parent.height / 9
                id:rect
                Row{
                    spacing: 10
                    anchors.centerIn: parent


                TextField {
                    placeholderText: "Enter bus matricule"
//                    horizontalAlignment: Text.AlignHCenter
                    implicitWidth: 500
                    color: "black"
                    font.pointSize: 13
                    validator: RegExpValidator {}
                    background: Rectangle {
                        implicitWidth: 150
                        implicitHeight: 40
                        radius: 4
                }
               }

                Image {
                    id: serach
                    source: "icon/search_500px.png"
                    width: 30
                    height: 30
                    y: 5
                }
            }

            }
        }
       }*/
}
