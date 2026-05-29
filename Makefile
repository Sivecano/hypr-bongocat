all:
	$(CXX) -shared -fPIC --no-gnu-unique main.cpp CDotDecoration.cpp -o hypr-bongocat.so -g `pkg-config --cflags pixman-1 libdrm hyprland pangocairo libinput libudev wayland-server xkbcommon` -std=c++2b -O2
clean:
	rm ./hypr-bongocat.so
