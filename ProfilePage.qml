import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Page {
    id: profilepage

    Image {
        id: backgrounds
        source: "images/backgroud4.webp"
        anchors.fill: parent
    }
    header: ToolBar {
        background: Rectangle {
            color: "white"
            width: parent.width
        }
        Text {
            text: "Profile"
            font.family: "Lucida Fax"
            font.bold: true
            font.pointSize: 16
            color: "blue"  // Heading color changed to blue
            anchors.centerIn: parent
        }
    }

    property string currentLanguage: "en" // Default language
    property var translations: {
        "en": {
            "firstName": "Firstname",
            "lastName": "Lastname",
            "phone": "Tel +237",
            "email": "Email",
            "password": "Password",
            "darkLightMode": "Dark-Light mode: ",
            "update": "Update"
        },
        "fr": {
            "firstName": "Prénom",
            "lastName": "Nom de famille",
            "phone": "Tel +237",
            "email": "Email",
            "password": "Mot de passe",
            "darkLightMode": "Mode Sombre-Lumineux : ",
            "update": "Mettre à jour"
        }
    }

//    Row {
//        anchors.fill: parent

                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Row {
                        spacing: 10
                        Image {
                            id: names
                            source: "icon/customer_64px.png"
                            width: 20
                            height: 20
                            y: 10
                        }
                        TextField {
                            id: firstnameField
                            placeholderText: translations[currentLanguage].firstName
                            color: "black"
                            validator: RegExpValidator { regExp: /^[a-zA-Z]+$/ }
                            background: Rectangle {
                                implicitWidth: 350
                                implicitHeight: 35
                                radius: 4
                                border.color: "#b1a7a7"
                            }
                        }
                    }

                    Row {
                        spacing: 10
                        Image {
                            id: phonenum
                            source: "icon/phone_48px.png"
                            width: 20
                            height: 20
                            y: 10
                        }
                        TextField {
                            id: phonenumberField
                            placeholderText: translations[currentLanguage].phone
                            color: "black"
                            validator: RegExpValidator { regExp: /^[0-9]{9}$/ }
                            background: Rectangle {
                                implicitWidth: 350
                                implicitHeight: 35
                                radius: 4
                                border.color: "#b1a7a7"
                            }
                        }
                    }

                    Row {
                        spacing: 10
                        Image {
                            id: email
                            source: "icon/gmail_logo_100px.png"
                            width: 20
                            height: 20
                            y: 10
                        }
                        TextField {
                            id: emailField
                            placeholderText: translations[currentLanguage].email
                            color: "black"
                            validator: RegExpValidator { regExp: /^[a-z0-9]+@gmail\.com$/ }
                            background: Rectangle {
                                implicitWidth: 350
                                implicitHeight: 35
                                radius: 4
                                border.color: "#b1a7a7"
                            }
                        }
                    }

                    Row {
                        spacing: 10
                        Image {
                            id: password
                            source: "icon/lock_52px.png"
                            width: 20
                            height: 20
                            y: 10
                        }
                        TextField {
                            id: passwordField
                            placeholderText: translations[currentLanguage].password
                            echoMode: TextInput.Password
                            color: "black"
                            validator: RegExpValidator { regExp: /^[a-zA-Z0-9]+[@$!%*?&]$/ }
                            background: Rectangle {
                                implicitWidth: 350
                                implicitHeight: 35
                                radius: 4
                                border.color: "#b1a7a7"
                            }
                        }
                    }

                    Row {
                        spacing: 10
                        SwitchDelegate {
                            id: control
                            text: translations[currentLanguage].darkLightMode
                            checked: true

                            contentItem: Text {
                                rightPadding: control.indicator.width + control.spacing
                                text: control.text
                                font.bold: true
                                font.pointSize: 12
                                opacity: enabled ? 1.0 : 0.8
                                color: control.down ? "#17a81a" : "#000000"
                                elide: Text.ElideRight
                                verticalAlignment: Text.AlignVCenter
                            }

                            indicator: Rectangle {
                                implicitWidth: 48
                                implicitHeight: 26
                                x: control.width - width - control.rightPadding
                                y: parent.height / 2 - height / 2
                                radius: 13
                                color: control.checked ? "#17a81a" : "transparent"
                                border.color: control.checked ? "#17a81a" : "#cccccc"

                                Rectangle {
                                    x: control.checked ? parent.width - width : 0
                                    width: 26
                                    height: 26
                                    radius: 13
                                    color: control.down ? "#cccccc" : "#ffffff"
                                    border.color: control.checked ? (control.down ? "#17a81a" : "#21be2b") : "#999999"
                                }
                            }
                        }
                    }

                    // Language Selection ComboBox
                    Row {
                        spacing: 10
                        x: 150
                        ComboBox {
                            id: languageComboBox
                            model: ["English", "French"]
                            currentIndex: currentLanguage === "fr" ? 1 : 0 // Default to English
                            onCurrentIndexChanged: {
                                currentLanguage = currentIndex === 1 ? "fr" : "en";
                                updateText();
                            }
                            background: Rectangle {
                                radius: 5
                                border.color: "#b1a7a7"
                                color: "transparent"
                                implicitWidth: 100
                            }
                        }
                    }

                    Button {
                        text: translations[currentLanguage].update
                        id: controle
                        x: 100
                        onClicked: {
                            console.log("Firstname:", firstnameField.text)
                            console.log("Tel:", phonenumberField.text)
                            console.log("Email:", emailField.text)
                            console.log("Password:", passwordField.text)

                            // Call the C++ method to insert user data
                            db.addStaff(14, firstnameField.text, "", emailField.text, parseInt(phonenumberField.text), "user@example.com", 2000000, "2024-08-28");
                        }

                        contentItem: Text {
                            color: "#f9f6f6"
                            text: controle.text
                            font: controle.font
                            opacity: enabled ? 1.0 : 0.3
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }

                        background: Rectangle {
                            color: "#1f54e8"  // Button color
                            implicitWidth: 90
                            implicitHeight: 40
                            opacity: enabled ? 1 : 0.3
                            border.color: "#f9f6f6"
                            border.width: 1
                            radius: 6
                        }
                    }
                }
//    }

    function updateText() {
        firstnameField.placeholderText = translations[currentLanguage].firstName;
        phonenumberField.placeholderText = translations[currentLanguage].phone;
        emailField.placeholderText = translations[currentLanguage].email;
        passwordField.placeholderText = translations[currentLanguage].password;
        control.text = translations[currentLanguage].darkLightMode;
        controle.text = translations[currentLanguage].update;
    }
}
