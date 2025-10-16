

$fn=75;


// box();

 lid();


module lid(){
    difference(){
        minkowski(){
            cube([100,56,2],center=true);
            cylinder(d=12,h=2);
        }
        translate([52,30,-8])cylinder(d=4,h=26);
        translate([-52,30,-8])cylinder(d=4,h=26);
        translate([52,-30,-8])cylinder(d=4,h=26);
        translate([-52,-30,-8])cylinder(d=4,h=26);
        translate([3,0,0])leds();
        translate([3,0,-2])cylinder(d1=8,d2=4,h=6);
    }
    difference(){
        union(){
            translate([3,0,1])cube([80,3,4],center=true);   
            translate([3,0,1])cube([3,50,4],center=true);   
        }
        translate([3,0,-2])cylinder(d1=8,d2=4,h=6);
    }
}


module leds(){
    difference(){
        translate([0,0,-2])cylinder(d1=32,d2=28,h=6);
        translate([0,0,-3])cylinder(d=22,h=8);
    }
}


module box(){
    difference(){
        minkowski(){
            cube([100,56,20],center=true);
            cylinder(d=12,h=2);
        }
        translate([0,0,4])cube([100,56,20],center=true);
        translate([52,30,-8])cylinder(d=3,h=26);
        translate([-52,30,-8])cylinder(d=3,h=26);
        translate([52,-30,-8])cylinder(d=3,h=26);
        translate([-52,-30,-8])cylinder(d=3,h=26);
        translate([49,10,-1])rotate([0,90,0])cube([10,14,10],center=true);
        translate([40,10,-2])rotate([0,90,0])cylinder(d=6,h=26);
        translate([40,-10,-2])rotate([0,90,0])cylinder(d=3.5,h=26);
        translate([-47,-23,-6])cylinder(d=10,h=26);
    }

    difference(){
        union(){
            translate([40,24,-10])cylinder(d=6,h=14);
            translate([-40,24,-10])cylinder(d=6,h=14);
            translate([3,-21,-10])cylinder(d=6,h=14);
        }
        translate([40,24,-7])cylinder(d=3,h=14);
        translate([-40,24,-7])cylinder(d=3,h=14);
        translate([3,-21,-7])cylinder(d=3,h=14);
    }
}
