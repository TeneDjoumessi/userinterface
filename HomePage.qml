import QtQuick 2.0
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.0

Page {
    id: profilepage
    Image {
        id: backgrounds
        source: "images/backgroud4.webp"
        anchors.fill: parent
    }

        /* Rectangle {
             color: "#cac1c1"
             width: parent.width
             height: parent.height / 6
             id:rect

             Image {
                 id: applogos
                 x: parent.width / 2 - 70
                 source: "images/TrackMe logo1.jpg"
                 height: 100
                 width: 100
                 layer {
                     enabled: true
                     effect: OpacityMask {
                         maskSource: Item {
                             width: applogos.width
                             height: applogos.height
                             Rectangle {
                                 anchors.centerIn: parent
                                 width: applogos.width
                                 height: applogos.height
                                 radius: 50 // Définir le rayon de la bordure ici
                             }
                         }
                     }
                 }
             }
         }*/

               Column{
                 anchors.centerIn: parent
                        spacing: 10
                        Image {
                            id: applogos
                            anchors.horizontalCenter: parent.horizontalCenter
                            source: "images/TrackMe logo1.jpg"
                            height: 100
                            width: 100
                            layer {
                                enabled: true
                                effect: OpacityMask {
                                    maskSource: Item {
                                        width: applogos.width
                                        height: applogos.height
                                        Rectangle {
                                            anchors.centerIn: parent
                                            width: applogos.width
                                            height: applogos.height
                                            radius: 50 // Définir le rayon de la bordure ici
                                        }
                                    }
                                }
                            }
                        }
                            Text {
                                id: aboutus
                                text: qsTr("About Us")
                                font.family: "Arial"
                                font.bold: true
                                font.pointSize: 16
                                color: "blue"  // Heading color changed to blue
                                anchors.horizontalCenter: parent.horizontalCenter
                            }

                        /*Text {

                            id: aboutus
                            text: qsTr("About Us")
                            font.bold: true
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.pointSize: 11
                        }*/

                        Text {
                            text: qsTr("TrackMe is an innovative bus application designed to enhance your travel experience.With real-time tracking, you can monitor bus locations and schedules efficiently.The app provides timely notifications for arrivals and delays.Users can also access route maps and estimated travel times.Its user-friendly interface ensures a smooth experience for all passengers.Stay informed and enjoy a hassle-free commute with TrackMe.Join us in making public transportation smarter and more convenient.")
                            //horizontalAlignment: Text.AlignJustify
                            width: 300
                            font.pointSize: 10
                            wrapMode: Text.WordWrap
                             anchors.horizontalCenter: parent.horizontalCenter
                        }

                        // Contact Us Section

                        Text {
                            id: contactus
                            text: qsTr("Contact Us")
                            font.family: "Arial"
                            font.bold: true
                            font.pointSize: 16
                            horizontalAlignment: Text.AlignHCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            color: "blue"  // Heading color changed to blue
                        }
                        /*Text {

                            text: qsTr("Contact Us")
                            font.bold: true
                            horizontalAlignment: Text.AlignHCenter
                            font.pointSize: 11
                             anchors.horizontalCenter: parent.horizontalCenter
                        }*/

                        Text {

                            text: qsTr("Phone: 123456\nEmail: support@trackme.com\nWhatsApp: 654321")
                            font.pointSize: 10
                             anchors.horizontalCenter: parent.horizontalCenter
                        }

             }



}
