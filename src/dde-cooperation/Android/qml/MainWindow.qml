import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import QtMultimedia 5.8

Window {
    id: window
    title: " "
    width: loader.width
    height: loader.height
    visible: loader.status == Loader.Ready

    Loader {
        id: loader
        focus: true
        anchors.centerIn: parent

        source: getSource()

        function getSource() {
            if (backend.stage == "1") {
                return "NewDevice.qml";
            }

            if (backend.stage == "6") {
                return "VideoPlayer.qml";
            }

            return "";
        }
    }

    onClosing: {
        backend.closeWindow();
    }
}

