$fn=200;
//color("blue") translate([0,0,17.5]) cube([100,80,35], center=true);
//top();
//magnet_inner_top();

bottom();
magnet_inner_bottom();

module bottom(){
    difference(){
        difference(){
            scale([1.4, 1.4, 0.8]) sphere(d=100);
            scale([1.3, 1.3, 0.7]) sphere(d=100);
        }
    magnets();
    translate([0,0,50]) cube([200,200,100], center=true);
    translate([0,0,-45]) cylinder(d=20, h=20);
    }
}

module top(){
    difference(){
        difference(){
            scale([1.4, 1.4, 1.5]) sphere(d=100);
            scale([1.3, 1.3, 1.4]) sphere(d=100);
        }
    magnets();
    translate([0,0,-50]) cube([200,200,100], center=true);
    }

}

module magnets(){
    translate([65,0,-3]) cylinder(d=7.17, h=6);
    translate([-65,0,-3]) cylinder(d=7.17, h=6);
    translate([0,65,-3]) cylinder(d=7.17, h=6);
    translate([0,-65,-3]) cylinder(d=7.17, h=6);
}

module magnet_sleeves(){
    translate([65,0,-11.5]) cylinder(d=10, h=35);
    translate([-65,0,-11.5]) cylinder(d=10, h=35);
    translate([0,65,-11.5]) cylinder(d=10, h=35);
    translate([0,-65,-11.5]) cylinder(d=10, h=35);
}
module magnet_inner_bottom(){
    difference(){
        intersection(){
            magnet_sleeves();
            scale([1.4, 1.4, 0.8]) sphere(d=100);
        }
        magnets();
        translate([0,0,50]) cube([200,200,100], center=true);
    }
}

module magnet_inner_top(){
    difference(){
        intersection(){
            magnet_sleeves();
             scale([1.4, 1.4, 1.5]) sphere(d=100);
        }
        magnets();
        translate([0,0,-50]) cube([200,200,100], center=true);
    }
}