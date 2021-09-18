use <common.scad>;

UNIT = 19;
UNIT_H = UNIT / 2;
UNIT_Q = UNIT / 4;
UNIT_E = UNIT / 8;

KEY_OFFSET_X = 9;
KEY_OFFSET_Y = UNIT_Q + 2;
echo(UNIT_H);
finger_plate_points = [
    [-60,2],
    [82, 2],
    [82, 5+UNIT*4],
    [20, 20+UNIT*4],
    [0, 20+UNIT*4],
    [-60, 5+UNIT*4],
];

finger_plate_sc_points = [
    [-60+3, 2+4],
    [82-3, 2+4],
    [82-3, 5+UNIT*4 - 3],
    [-60+3, 5+UNIT*4 - 3],
];

module finger_plate_nohole() {
    linear_extrude(height = 2)
    polygon(points=finger_plate_points);
}

module keyswitch_col(x=0,y=0,c=3,a=0) {
    rotate([0, 0, a])
    for (i = [0:c-1]) {
        keyswitch_hole(x, y+19*i);
    }
}

module finger_plate_holes() {
    // G
    keyswitch_col(KEY_OFFSET_X-19*3, KEY_OFFSET_Y + UNIT_Q, 4, -5);
      //keyswitch_col(KEY_OFFSET_X-19*3, KEY_OFFSET_Y + UNIT_Q+UNIT*2+UNIT_E, 2, -5);
    // F
    keyswitch_col(KEY_OFFSET_X-19*2, KEY_OFFSET_Y + UNIT_H, 4, -5);
      //keyswitch_col(KEY_OFFSET_X-19*2, KEY_OFFSET_Y + UNIT_H + UNIT * 2 + UNIT_E, 2, -5);
    // E
    keyswitch_col(KEY_OFFSET_X-19, KEY_OFFSET_Y + UNIT_H + UNIT_Q + UNIT_E, 4, -5);
    // D
    keyswitch_col(KEY_OFFSET_X, KEY_OFFSET_Y + UNIT + UNIT_E, 4, -5);
    // C
    keyswitch_col(KEY_OFFSET_X+19, KEY_OFFSET_Y + UNIT_H + UNIT_Q + UNIT_E, 4, -5);
    // B
    keyswitch_col(KEY_OFFSET_X+19+19, KEY_OFFSET_Y+ UNIT_H + UNIT_E, 4, -5);
    // A
    keyswitch_col(KEY_OFFSET_X+19+19+19, KEY_OFFSET_Y+UNIT, 1, -5);
      keyswitch_col(KEY_OFFSET_X+19+19+19, KEY_OFFSET_Y +UNIT * 2 + UNIT_Q, 1, -5);
    for(p=finger_plate_sc_points){
        linear_extrude(height=5)
            translate(p)
            circle(1.6);
    }
}

module finger_plate() {
    difference() {
        finger_plate_nohole();
        finger_plate_holes();
    }
}


tilt_angle = [-6,-8,0];
tilt_angle_r = tilt_angle * -1;
echo(tilt_angle_r);

height = 26;

module finger_case_outer_face() {
    projection()
        translate([0,0,height])
        rotate(tilt_angle)
        linear_extrude(height=2)
        offset(2)
        polygon(points=finger_plate_points);
}

module finger_case_inner_face() {
    projection()
        translate([0,0,height])
        rotate(tilt_angle)
        linear_extrude(height=2)
        offset(-2)
        polygon(points=finger_plate_points);
}

module finger_case_bottom_face() {
    difference() {
        finger_case_outer_face();
        finger_case_inner_face();
    }
    projection()
    translate([0,0,height])
    rotate(tilt_angle)
    for(p=finger_plate_sc_points){
        linear_extrude(height=1)
        translate(p)
        circle(4);
    }
}


module finger_case_nohole() {
    difference() {
        linear_extrude(height=50)
        finger_case_bottom_face();
    
        translate([0,0,height])
        rotate(tilt_angle){
            linear_extrude(height=50)
            square(200, center=true);
            // sc hole
            translate([0,0,-9])
            linear_extrude(height=9)
            for(p=finger_plate_sc_points){
                translate(p)
                circle(1.6);
            }
            // plate_hole
            translate([0,0,-2])
            linear_extrude(height=2)
            offset(0.2)
            polygon(points=finger_plate_points);
        }
    }
}

module finger_case_hole() {
    //cable hole
    translate([30,0,10])
    rotate([-90,0,0])
    linear_extrude(height=4)
    circle(4);
    for (x = [0, 70]) {
        joint_female(x);
    }

}

module finger_case() {
    difference() {
        finger_case_nohole();
        finger_case_hole();
    }
}

//finger_case();

//rotate([180,0,0])
finger_plate();
