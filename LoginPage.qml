import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: loginpage
    Image {
        id: backgrounds
        source: "images/backgroud4.webp"
        anchors.fill: parent
    }

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Login"
                font.pointSize: 24
                font.bold: true
                color: "blue"
            }

            Row {
                spacing: 10
                Image {
                    source: "icon/user.png" // Add your icon path
                    width: 20
                    height: 20
                }
                TextField {
                    placeholderText: "Your name"
                    width: 250
                }
            }

            Row {
                spacing: 10
                Image {
                    source: "icon/lock.png" // Add your icon path
                    width: 20
                    height: 20
                }
                TextField {
                    placeholderText: "Password"
                    echoMode: TextInput.Password
                    width: 250
                }
            }

            Text {
                text: "Forgot password?"
                color: "blue"
                horizontalAlignment: Text.AlignHCenter
            }

            Button {
                text: "LOGIN"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    // Handle login logic here
                }
            }

            Text {
                text: "You don't have an Account? Sign Up"
                color: "blue"
                horizontalAlignment: Text.AlignHCenter
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        // Navigate to registration page
                    }
                }
            }

            Text {
                text: "Terms & Conditions"
                color: "blue"
                horizontalAlignment: Text.AlignHCenter
            }
        }
}
