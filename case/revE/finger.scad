use <common.scad>;

UNIT = 19;
UNIT_H = UNIT / 2;
UNIT_Q = UNIT / 4;
UNIT_E = UNIT / 8;

KEY_OFFSET_X = 10;
KEY_OFFSET_Y = 8;

finger_plate_points = [
    [-60,0],
    [-14,0],
    [-14,12],
    [80, 12],
    [80, 82],
    [21, 100],
    [-1, 100],
    [-60, 82],
];

finger_plate_sc_points = [
    [-35, 3],
    [80-3, 12+3],
    [80-3, 82 - 3],
    [-60+3, 82 - 3],
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
    GX = KEY_OFFSET_X - UNIT * 3;
    GY = KEY_OFFSET_Y + UNIT_Q;
    echo("G: ", GX, GY);
    keyswitch_col(GX, GY, 4);
    // F
    FX = KEY_OFFSET_X- UNIT * 2;
    FY = KEY_OFFSET_Y + UNIT_H;
    echo("F: ", FX, FY);
    keyswitch_col(FX, FY, 4);
    // E
    EX = KEY_OFFSET_X - UNIT;
    EY = KEY_OFFSET_Y + UNIT_H + UNIT_Q + UNIT_Q;
    echo("E: ", EX, EY);
    keyswitch_col(EX, EY, 4);
    // D
    DX = KEY_OFFSET_X;
    DY = KEY_OFFSET_Y + UNIT + UNIT_Q;
    echo("D: ", DX, DY);
    keyswitch_col(DX, DY, 4);
    // C
    CX = KEY_OFFSET_X+ UNIT;
    CY = KEY_OFFSET_Y + UNIT;
    echo("C: ", CX, CY);
    keyswitch_col(CX, CY, 4);
    // B
    BX = KEY_OFFSET_X+UNIT * 2;
    BY = KEY_OFFSET_Y+ UNIT_H + UNIT_Q;
    echo("B: ", BX, BY);
    keyswitch_col(BX, BY, 4);
    // A
    AX = KEY_OFFSET_X+UNIT*3;
    AY = KEY_OFFSET_Y+UNIT + UNIT_Q;
    echo("A: ", AX, AY);
    keyswitch_col(AX, AY, 1);
    echo("A2: ", AX, AY + UNIT + UNIT_Q);
    keyswitch_col(AX, AY + UNIT + UNIT_Q, 1);  
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

//tilt_angle = [-5,-5,0];
tilt_angle = [3,-6,0];
tilt_angle_r = tilt_angle * -1;
echo(tilt_angle_r);

height = 18;

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
            square(300, center=true);
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
    // cable hole
    translate([40,20,0])
    rotate([90,0,0])
    linear_extrude(height=20) {
        translate([0, 12])
        circle(8);
        translate([-8,12])
        square([16, 30]);
    }
    translate([10,20,0])
    rotate([90,0,0])
    linear_extrude(height=20) {
        translate([0, 8])
        circle(4);
        translate([-4,8])
        square([8, 30]);
    }
    // USB hole
    translate([12,110,0])
    rotate([90,0,0])
    linear_extrude(height=20) {
        //translate([0, 10])
        //circle(9);
        translate([-9, 4])
        square([18, 30]);
    }
    // TRRS hole
    translate([75,95,0])
    rotate([90,0,-30])
    linear_extrude(height=20) {
        translate([0, 15])
        circle(5);
        translate([-5, 15])
        square([10, 30]);
    }
}

module finger_case() {
    difference() {
        finger_case_nohole();
        finger_case_hole();
    }
    for (x = [20,70]) {
        joint_male([x, 10]);
    }
}

finger_case();

translate([0,-10])
rotate([180,0,0])
finger_plate();
