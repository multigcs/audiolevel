# Audio-Level-Display
kleine universelle Audio-Level Anzeige

## VU-Meter
![vu1](https://raw.githubusercontent.com/multigcs/audiolevel/main/images/vu1.jpg)

## 1. Schritt
Je einen 10kOhm Widerstand zwischen:
 * A0 und GND
 * A0 und 3V3
löten
![vu2](https://raw.githubusercontent.com/multigcs/audiolevel/main/images/vu2.jpg)

## 2. Schritt
einen 4.7kOhm Widerstand an A0 löten und das andere ende mit einem 33uF kondensator verbinden.
Dieser wiederum dient als Eingang  für das Audio-Signal.
In meinem Fall habe ich eine 3polige Stiftleiste auf
die Platine geklebt um alle erforderlichen Verbindungen parat zu haben. (AIN, GND, 5V)
![vu3](https://raw.githubusercontent.com/multigcs/audiolevel/main/images/vu3.jpg)

## 3. Schritt
Am Display (OLED SSD1306) habe ich die beiden mittleren pins entfernt und den abstand der übrigen etwas erhöht.
![vu4](https://raw.githubusercontent.com/multigcs/audiolevel/main/images/vu4.jpg)
So lässt sich das Display direkt auf den ESP-D1-Mini auflöten und die beiden mittleren kontakte mit etwas draht an D1 und 5V anlöten:
![vu5](https://raw.githubusercontent.com/multigcs/audiolevel/main/images/vu5.jpg)

## 4. Schritt
Nun nur noch den stecker mit 5V und GND verbinden und fertig:
![vu6](https://raw.githubusercontent.com/multigcs/audiolevel/main/images/vu6.jpg)


## 5. Schritt
Das ganze lässt sich per platformio kompilieren und installieren,
dazu bitte im Netz nach entsprechenden Anleitungen schauen.

In meinem Fall, unter Linux ging es recht einfach:
```
git clone git@github.com:multigcs/audiolevel.git
cd audiolevel
pip3 install platformio
make build
make flash
```

Das ganze kann beim ersten mal etwas länger dauern, da platformio sich die ganzen compiler und tool runterladen muss


## BOM
* 1x ESP-D1-mini (D1 Mini ESP8266 / WeMos D1 mini)
* 1x OLED SSD1306 128X64
* 2x Widerstand 10kOhm
* 1x Widerstand 4.7kOhm
* 1x Kondensator 33uF (16V oder besser mehr)

Die Werte dürfen leicht variieren, wichtig ist das die zwei Widerstände (hier 10k) den selben wert haben.
Die ESP-Boards gibt es unter allen möglichen bezeichnungen, unter anderem bei Amazon ab ca 4Euro/Stk. (im 3er Pack),
das gleiche gilt für die Displays, einfach auf die Bilder achten und das die Pinbelegung passt.

