cls = 0.20;

module keyswitch_hole(x=0, y=0, a=0) {
    translate([x, y, 0]) {
        rotate([0, 0, 90+a]) {
            linear_extrude(height = 2) {
            square([14+cls, 14+cls], center = true);
            }
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

module joint_male(pos=[0,0]) {
    translate(pos){
      rotate([0,0,180]){
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
}

module joint_female(pos=[0,0]) {
    delta = 0.6;
    translate(pos){
      rotate([0,0,180]){
        linear_extrude(height=10)
        offset(delta=delta)
        joint_male_face();
        
        translate([0,1.6,10])
        rotate([-90,0,0])
        linear_extrude(height=2.8)
        offset(delta=delta)
        circle(3, $fn=12);

        translate([0,-0.4,10])
        rotate([-90,0,0])
        linear_extrude(height=2.8)
        offset(delta=delta)
        circle(1, $fn=12);
      }
    }
}


joint_male([20, 0]);
joint_female([30, 0]);
