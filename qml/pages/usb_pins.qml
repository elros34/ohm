import QtQuick 2.0
import Sailfish.Silica 1.0
import "components/"

Page {
    id: page
    property int resScale: mainapp.smallScreen ? 1 : mainapp.mediumScreen ? 2 : 2

    ListModel {
        id: pagesModel

        ListElement {
            pin : qsTr("PIN 1")
            col : ""
            title: qsTr("Ground")
            description : qsTr("Ground")
        }
        ListElement {
            pin : qsTr("PIN 2")
            col : ""
            title: qsTr("Data+")
            description: qsTr("Data+")
        }
        ListElement {
            pin : qsTr("PIN 3")
            col : ""
            title: qsTr("Data−")
            description: qsTr("Data−")
        }
        ListElement {
            pin : qsTr("PIN 4")
            col : ""
            title: qsTr("VCC (+5 V)")
            description : qsTr("VCC (+5 V)")
        }
    }

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height + pagehead.height
        PageHeader {
            id : pagehead
            title: qsTr("USB pin assignments")
        }

        Column {
            id : column
            width: page.width
            anchors {
                top : pagehead.bottom
            }

            HighlightImage {
                id : img1
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    topMargin: Theme.paddingSmall / 4
                    bottomMargin: Theme.paddingSmall / 4
                }
                fillMode: Image.PreserveAspectFit
                source: "../img/usb_norm.png"
                color: Theme.primaryColor
                width: 250 * resScale
                height: 200 * resScale
            }
            HighlightImage {
                id : img2
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    topMargin: Theme.paddingSmall / 4
                    bottomMargin: Theme.paddingSmall / 4
                }
                fillMode: Image.PreserveAspectFit
                source: "../img/usb_mini.png"
                color: Theme.primaryColor
                width: 250 * resScale
                height: 200 * resScale
            }

            Separator {
                id: effect
                color: Theme.primaryColor
                width: page.width
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Qt.AlignHCenter
            }

            VerticalScrollDecorator {}

            PinsDetails {
                model: pagesModel
            }
        }
    }
}
