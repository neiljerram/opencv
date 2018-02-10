
run-container:
	docker run -ti --device=/dev/vcsm --device=/dev/vchiq \
		-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		-v `pwd`/opencv:/opencv \
		sgtwilko/rpi-raspbian-opencv:latest
