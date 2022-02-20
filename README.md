
# QtYoga - Flex layouting

* Installation

`CMakeLists.txt`
```
...

add_subdirectory(QtYoga)

...

target_link_libraries(... QtYogaplugin)

```

`main.cpp`
```
...
#include <QtYoga/objects/flexbackend.h>

using namespace Quite::Objects;
...

	qmlRegisterType<FlexBackend>("QtYoga",1, 0,"FlexBackend");

...
```


qml demo code
```
import QtQuick
import QtQuick.Controls
import QtYoga

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Flickable {
        anchors.fill: parent
        contentHeight: flex.contentHeight
        contentWidth: parent.width
        Flex {
            id: flex
            width: parent.width
            autoHeight: true
            flexWrap: "wrap"
            alignContent: "center"

            Repeater {
                model: 100
                Flex {
                    height: index % 2 == 0 ? 60 : 100
                    width: 120
                    //flexGrow: index === 2 ? 2 : 1
                    Rectangle {
                        color: "#" + Math.floor(Math.random() * 16777215).toString(16)
                        anchors.fill: parent
                    }
                }
            }
        }
    }
}


```
credit: https://github.com/tripolskypetr/qml-flexbox/