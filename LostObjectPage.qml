import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.0
import QtMultimedia 5.13

Page {
    id: lostobjectpage
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
            text: "LostObject Form"
            font.family: "Lucida Fax"
            font.bold: true
            font.pointSize: 16
            color: "blue"  // Heading color changed to blue
            anchors.centerIn: parent
        }
    }
    Dialog {
        id: dialog
        title: "Notification"
        visible: false
        standardButtons: Dialog.Ok
        anchors.centerIn: parent
        property string message: ""
        Text {
            anchors.centerIn: parent
            text: dialog.message
        }
    }

    property string imagePath: ""
    FileDialog {
        id: fileDialog
        title: "Please choose a file"
        folder: shortcuts.home
        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrl)
            imagePath = fileDialog.fileUrl.toString()
            profilpicture.source = imagePath // Update the image source
            imageError.visible = false; // Hide error when a valid image is selected
        }
        onRejected: {
            console.log("Canceled")
        }
    }
    // Camera and Viewfinder
        Camera {
            id: camera
            onError: {
                console.log("Camera error:", errorString);
            }
        }

        /*CameraViewfinder {
            id: viewfinder
            anchors.fill: parent
            visible: false // Initially hidden
            source: camera
        }*/

        Image {
            y:10
            id: qrcode
            source: "icon/qr_code_128px.png"
            anchors.right: parent.right
            anchors.rightMargin: 60
            width: 50
            height: 50
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Column {
            spacing: 10
            anchors.centerIn: parent

            Text {
                id: name
                text: qsTr("Lost object Picture")
                font.bold: true
                font.pointSize: 14
                Layout.alignment: Qt.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                width: 100
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
                Image {
                    id: profilpicture
                    source: "icon/picture_80px.png"
                    width: 100
                    height: 100
                    fillMode: Image.PreserveAspectFit // Maintain aspect ratio
                    Layout.alignment: Qt.AlignHCenter
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            fileDialog.open()
                        }
                    }
                }
            }

            Text {
                id: imageError;
                color: "red";
                visible: false;
                text: "Please select an image.";
            }

            Row {
                spacing: 10
                x:10
                Image {
                    source: "icon/customer_60px.png" // Add your icon path
                    width: 20
                    height: 20
                    y:10
                }

                TextField {
                    id: usernameField
                    placeholderText: "Enter your username"
                    color: "black"
                    background: Rectangle {
                        implicitWidth: 350
                        implicitHeight: 40
                        radius: 4
                        border.color: "#ada4a4"
                    }
                }
            }

            Row {
                spacing: 10
                x: 10
                Image {
                    source: "icon/gmail_logo_100px.png" // Add your icon path
                    width: 20
                    height: 20
                    y:10
                }

                TextField {
                    id: emailField
                    placeholderText: "Enter your email"
                    color: "black"
                    background: Rectangle {
                        implicitWidth: 350
                        implicitHeight: 40
                        radius: 4
                        border.color: "#ada4a4"
                    }
                }
            }

            Row {
                spacing:10
                x:10
                    Image {
                        source: "icon/lock_52px.png" // Add your icon path
                        width: 20
                        height: 20
                        y:10
                    }

                TextField {
                    id: passwordField
                    placeholderText: "Enter your password"
                    echoMode: TextInput.Password
                    color: "black"
                    background: Rectangle {
                        implicitWidth: 350
                        implicitHeight: 40
                        radius: 4
                        border.color: "#ada4a4"
                    }
                }
            }

            Row {
                spacing: 10
                x:10
                Image {
                    source: "icon/phone_48px.png" // Add your icon path
                    width: 20
                    height: 20
                    y:10
                }

                TextField {
                    id: phoneField
                    placeholderText: "Enter your phone number"
                    color: "black"
                    background: Rectangle {
                        implicitWidth: 350
                        implicitHeight: 40
                        radius: 4
                        border.color: "#ada4a4"
                    }
                }
            }

            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    text: "Submit"
                    id: submitbtn
                    onClicked: {
                        // Submit logic here
                        dialog.message = "Registration successful!";
                        dialog.open();
                    }
                    contentItem: Text {
                        text: submitbtn.text
                        font: submitbtn.font
                        color: "#ffffff"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                    background: Rectangle {
                        color: "#1f54e8"  // Button color
                        implicitWidth: 100
                        implicitHeight: 40
                        radius: 6
                    }
                }
            }
        }
//    }
}
