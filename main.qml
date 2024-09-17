import QtQuick 2.13
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("TrackMe")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        HomePage{

        }

        TrackBusPage {

        }

        LostObjectPage {
            id: name
        }



        ProfilePage {

        }
    }

    footer: TabBar {
        background: Rectangle {
            color: "#dddcdc"

        }
        id: tabBar
        currentIndex: swipeView.currentIndex
        onCurrentIndexChanged:
        {

        }

        TabButton {
            Image {
                id: homepage
                anchors.horizontalCenter: parent.horizontalCenter
                source: "icon/Home_128px.png"
                width: 50
                height: 50
            }
        }
        TabButton {
            Image {
                id: trackbuspage
                anchors.horizontalCenter: parent.horizontalCenter
                source: "icon/track_order_48px.png"
                width: 50
                height: 50
            }
        }
        TabButton {
            Image {
                id: lostobjectpage
                anchors.horizontalCenter: parent.horizontalCenter
                source: "icon/Pick Up_128px.png"
                width: 50
                height: 50
            }
        }
        TabButton {
            Image {
                id: profilepage
                anchors.horizontalCenter: parent.horizontalCenter
                source: "icon/customer_64px.png"
                width: 50
                height: 50
            }
        }
    }
}
