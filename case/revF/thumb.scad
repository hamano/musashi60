use <common.scad>;

thumb_plate_points = [
                [20,-22],
                [20, -2],
                [88, -2],
                [95,-22],
                [84,-41],
                [78,-41],
                ];

thumb_plate_sc_points = [
                [20+5, -12],
                [88-2, -2-4],
                [84-3, -41+3],
                ];

module plate_nohole() {
    linear_extrude(height=2)
    polygon(points=thumb_plate_points);
}

module keyswitch_col(x=0,y=0,c=3,a=0) {
    translate([x,y])
    rotate([0,0,a])
    for (i = [0:c-1]) {
        keyswitch_hole(0, 19*i);
    }
}

module plate_holes() {
    keyswitch_hole(39, -13, 90);
    keyswitch_hole(61, -16, 90-15);
    keyswitch_hole(81, -24, 90-30);

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


tilt_angle = [12,20,0];
tilt_angle_r = tilt_angle * -1;
height = 45;

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
        translate([-2,1])
        translate(p)
        circle(4.2);
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
    translate([55,0,0])
    rotate([90,0,0])
    linear_extrude(height=4){
        translate([0, 15])
        circle(6);
        translate([-6,15])
        square([12, 30]);
    }
    for (x = [27,67]) {
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

translate([0, 60])
thumb_plate();

