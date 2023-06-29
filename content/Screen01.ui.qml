/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import JedDemo3D
import Quick3DAssets.Scene 1.0
import QtQuick.Timeline 1.0

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            clearColor: "#025327"
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -234.369
                y: -36.405
                color: "#e5fcfcfc"
                brightness: 10.23
                eulerRotation.z: 0
                eulerRotation.y: -1.25305
                eulerRotation.x: -11.8661
                z: 31.61187
            }

            PerspectiveCamera {
                id: sceneCamera
                x: 63.274
                y: 6.784
                eulerRotation.z: -0
                eulerRotation.y: 8.86357
                eulerRotation.x: 0
                z: 647.52051
            }

            Scene {
                id: robot
                x: -22.69
                y: -42.174
                eulerRotation.y: slider.value
                eulerRotation.z: -0
                eulerRotation.x: 3.02881
                z: -33.54752
            }
        }

        Slider {
            id: slider
            opacity: 0
            anchors.fill: parent
            anchors.rightMargin: 21
            anchors.bottomMargin: -285
            anchors.leftMargin: -21
            anchors.topMargin: 285
            to: 180
            from: -180
            value: 0.5
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#4aee45"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                loops: 1
                running: true
                duration: 1000
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 1000
        enabled: true

        KeyframeGroup {
            target: sceneCamera
            property: "x"
            Keyframe {
                value: -9.52183
                frame: 948
            }
        }

        KeyframeGroup {
            target: sceneCamera
            property: "z"
            Keyframe {
                value: 180.71655
                frame: 948
            }
        }
    }
}
