
module keyswitch_hole(x=0, y=0, a=0) {
    translate([x, y, 0]) {
        rotate([0, 0, 90+a]) {
            linear_extrude(height = 2) {
            square([14, 14], center = true);
            translate([-8, 3, 0]) square([1, 3]);
            translate([-8, -6, 0]) square([1, 3]);
            translate([7, 3, 0]) square([1, 3]);
            translate([7, -6, 0]) square([1, 3]);
            }
            //translate([0, 0, 1.4])
            linear_extrude(height = 0.6) {
                translate([-3, 7]) square([6, 1]);
            translate([-3, -8]) square([6, 1]);
            }
        }
    }
}

keyswitch_hole();

module joint_male_face() {
    translate([-1, 0])
    square([2,4]);
    translate([-3, 2])
    square([6,2]);
}

module joint_male(x=0) {
    translate([x,0,0]){
        linear_extrude(height=10)
        joint_male_face();
        
        translate([0,2,10])
        rotate([-90,0,0])
        linear_extrude(height=2)
        circle(3, $fn=12);
        
        translate([0,0,10])
        rotate([-90,0,0])
        linear_extrude(height=2)
        circle(1, $fn=12);
    }
}

module joint_female(x=0) {
    translate([x,0,0]){
        linear_extrude(height=10)
        offset(delta=0.3)
        joint_male_face();
        
        translate([0,1.7,10])
        rotate([-90,0,0])
        linear_extrude(height=2.6)
        offset(delta=0.3)
        circle(3, $fn=12);

        translate([0,-0.3,10])
        rotate([-90,0,0])
        linear_extrude(height=2.6)
        offset(delta=0.3)
        circle(1, $fn=12);
    }
}

joint_male(20);
joint_female(30);
