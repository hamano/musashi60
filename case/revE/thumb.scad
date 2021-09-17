
use <common.scad>;

thumb_plate_points = [
                [-8,-22],
                [-8, -2],
                [82, -2],
                [82, -38],
                [68, -38],
                [38, -22],
                ];

thumb_plate_sc_points = [
                [-8+3, -12],
                [82-3, -2-3],
                [82-3, -38+3],
                ];

module plate_nohole() {
    linear_extrude(height=2)
    polygon(points=thumb_plate_points);
}


module plate_holes() {
    keyswitch_hole(12, -12);
    keyswitch_hole(12+19, -12);
    keyswitch_hole(52, -15, -15);
    keyswitch_hole(50+19, -23, -15);
    //keyswitch_hole(70, -24, -30);
    for(p=thumb_plate_sc_points){
        linear_extrude(height=5)
            translate(p)
            circle(1.6);
    }
}


module thumb_plate() {
    difference() {
        plate_nohole();
        plate_holes();
    }
}


tilt_angle = [12,6,0];
tilt_angle_r = tilt_angle * -1;
height = 26;

module thumb_case_outer_face() {
    projection()
        translate([0,0,height])
        rotate(tilt_angle)
        linear_extrude(height=2)
        offset(2)
        polygon(points=thumb_plate_points);
}

module thumb_case_inner_face() {
    projection()
        translate([0,0,height])
        rotate(tilt_angle)
        linear_extrude(height=2)
        offset(-2)
        polygon(points=thumb_plate_points);
}

module thumb_case_bottom_face() {
    difference(){
        thumb_case_outer_face();
        thumb_case_inner_face();
    }
    projection()
    translate([0,0,height])
    rotate(tilt_angle)
    for(p=thumb_plate_sc_points){
        linear_extrude(height=1)
        translate(p)
        circle(4);
    }
}

module case() {
    difference() {
        linear_extrude(height=50)
            thumb_case_bottom_face();
        translate([0,0,height])
            rotate(tilt_angle){
            linear_extrude(height=50)
                square(200, center=true);
            // screw hole
            translate([0,0,-9])
                linear_extrude(height=9)
                for(p=thumb_plate_sc_points){
                    translate(p)
                        circle(1.6);
                }
            // plate hole
            translate([0,0,-2])
            linear_extrude(height=2)
            offset(0.2)
            polygon(points=thumb_plate_points);
        }
    }
}

module thumb_case_hole() {
    translate([30,0,10])
    rotate([90,0,0])
    linear_extrude(height=4)
    circle(4);
}

module thumb_case() {
    difference() {
        case();
        thumb_case_hole();
    }

    for (x = [0,70]) {
        joint_male(x);
    }

}

//`thumb_case();

//translate([0,10])
rotate([180,0,0])
thumb_plate();
