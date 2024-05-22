### 4.3.4 Item

Item是Qt Quick中所有可視元素的基類
它自已也不會繪畫
但是它定義大部分通用屬性x,y,width,heigth,anchoring

### 4.3.6 

Key response

event.accepted = true,防止event往上送

```
    Rectangle{
        id: colorRectangle
        width: 300;
        height: 200;
        color: "#c0c0c0";
        focus: true;
        Keys.enabled: true;
        Keys.onEscapePressed: Qt.quit();
        Keys.onBackPressed: Qt.quit();
        Keys.onPressed: {
            switch(event.key){
            case Qt.Key_0:
            case Qt.Key_1:
            case Qt.Key_2:
            case Qt.Key_3:
                event.accepted = true;
                keyView.text = event.key - Qt.Key_0;
                break;
            }
        }
```