
cls = 0.2;

module cap_outer() {
    //linear_extrude(height=8, scale=0.7) {
    linear_extrude(height=8, scale=0.7) {
        offset(2, $fs=0.1) {
            square([15,15], center=true);
        }
    }
}

module cap_hole() {
    linear_extrude(height=5, scale=0.7) {
        offset(0, $fs=0.1) {
            square([15,15], center=true);
        }
    }
}

module stem_pole() {
    cylinder(d = 6, h = 10);
}

module stem_hole() {
    linear_extrude(height = 10) {
        square([1+cls, 3.8+cls], center=true);
        square([3.8+cls, 1+cls], center=true);
    }
}

module stem() {
    intersection() {
        cap_outer();
        difference() {
            stem_pole();
            stem_hole();
        };
    }
}

module cap() {
    difference() {
        cap_outer();
        cap_hole();
    }
}


module keycap() {
    cap();
    stem();
}

//cap_outer();