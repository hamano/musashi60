
%.stl: %.scad
	openscad $^ --render -o $@

%.png: %.scad
	openscad $^ --render -o $@

#all: finger_case.stl finger_plate.stl thumb_case.stl thumb_plate.stl
all: thumb_case.stl thumb_plate.stl

clean:
	rm -rf finger_case.stl finger_plate.stl thumb_case.stl thumb_plate.stl

finger_case.stl: finger_case.scad
finger_plate.stl: finger_plate.scad

thumb_case.stl: thumb_case.scad
thumb_plate.stl: thumb_plate.scad



