import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: registrationpage
    Image {
        id: backgrounds
        source: "images/backgroud4.webp"
        anchors.fill: parent
    }

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Register here!"
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
                    placeholderText: "Username (max 15)"
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
                    placeholderText: "Password (min 8)"
                    echoMode: TextInput.Password
                    width: 250
                }
            }

            Row {
                spacing: 10
                ComboBox {
                    id: countryComboBox
                    width: 250
                    model: ["Cameroon", "Nigeria", "Ghana"] // Add more countries
                    currentIndex: 0
                }
            }

            Row {
                spacing: 10
                Image {
                    source: "icon/phone.png" // Add your icon path
                    width: 20
                    height: 20
                }
                TextField {
                    placeholderText: "Phone number (e.g. +237...)"
                    width: 250
                }
            }

            Row {
                spacing: 10
                Image {
                    source: "icon/user.png" // Add your icon path
                    width: 20
                    height: 20
                }
                TextField {
                    placeholderText: "First Name (max 15)"
                    width: 250
                }
            }

            CheckBox {
                text: "I accept terms and conditions"
            }

            Button {
                text: "REGISTER"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    // Handle registration logic here
                }
            }
        }
}
