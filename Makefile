
all: build flash


build:
	platformio run

flash:
	killall gtkterm || true
	killall -9 minicom || true
	#sleep 2
	platformio run --target upload

monitor:
	killall gtkterm || true
	killall -9 minicom || true
	gtkterm --port /dev/ttyUSB0 --speed 115200 &
	sleep 5
	#xterm -e "minicom -D /dev/ttyUSB0 -b 115200" &

