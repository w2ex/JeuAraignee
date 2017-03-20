import QtQuick 2.6

Rectangle {

    width: 360
    height: 360
    color: "#fbb852"

    MouseArea {
        id: mouseArea
        anchors.rightMargin: 259
        anchors.bottomMargin: 252
        anchors.leftMargin: 29
        anchors.topMargin: 44
        anchors.fill: parent
    }

    MouseArea {
        id: mouseArea1
        x: 123
        y: 44
        width: 90
        height: 64
    }

    MouseArea {
        id: mouseArea2
        x: 228
        y: 44
        width: 90
        height: 64
    }

    MouseArea {
        id: mouseArea3
        x: 29
        y: 130
        width: 81
        height: 75
    }

    MouseArea {
        id: mouseArea4
        x: 130
        y: 130
        width: 83
        height: 75
    }

    MouseArea {
        id: mouseArea5
        x: 223
        y: 130
        width: 95
        height: 75
    }

    MouseArea {
        id: mouseArea6
        x: 29
        y: 236
        width: 81
        height: 81
    }

    MouseArea {
        id: mouseArea7
        x: 130
        y: 236
        width: 83
        height: 81
    }

    MouseArea {
        id: mouseArea8
        x: 228
        y: 236
        width: 90
        height: 81
    }
}
