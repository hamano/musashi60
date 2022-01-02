
use <common.scad>;

thumb_plate_points = [
                [-2,-22],
                [-2, -2],
                [85, -2],
                [85, -36],
                [73, -36],
                [43, -22],
                ];

thumb_plate_sc_points = [
                [-2+3, -12],
                [85-3, -2-3],
                [85-3, -36+3],
                ];

module plate_nohole() {
    linear_extrude(height=2)
    polygon(points=thumb_plate_points);
}


module plate_holes() {
    keyswitch_hole(15, -12);
    keyswitch_hole(15+19, -12);
    keyswitch_hole(55, -15, -15);
    keyswitch_hole(73, -21, -15);
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
height = 25;

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
    // cable hole
    translate([40,0,0])
    rotate([90,0,0])
    linear_extrude(height=4){
        translate([0, 10])
        circle(8);
        translate([-8,10])
        square([16, 30]);
    }
    for (x = [0,20,70]) {
        joint_female([x, 0]);
    }
}

module thumb_case() {
    difference() {
        case();
        thumb_case_hole();
    }
}

thumb_case();

//translate([0,10])
//rotate([180,0,0])
//thumb_plate();
