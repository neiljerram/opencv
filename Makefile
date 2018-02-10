
run-container:
	docker run -ti --device=/dev/vcsm --device=/dev/vchiq \
		--net=host \
		-e DISPLAY=$$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		-v /home/pi:/pi -w /pi/opencv \
		-e XAUTHORITY=/pi/.Xauthority \
		sgtwilko/rpi-raspbian-opencv:latest
