REV=revG

%.stl: %.scad
	openscad $^ --render -o $@

%.png: %.scad
	openscad $^ --render -o $@

all: main_case.stl main_plate.stl thumb_case.stl thumb_plate.stl

clean:
	rm -rf main_case.stl main_plate.stl thumb_case.stl thumb_plate.stl

main_case.stl: main_case.scad
main_plate.stl: main_plate.scad

thumb_case.stl: thumb_case.scad
thumb_plate.stl: thumb_plate.scad



