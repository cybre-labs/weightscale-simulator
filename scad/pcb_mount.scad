$fn=40;
//constants
//profil
profil_b=40;
profil_h=6;
//waage
waage_b=25.5;
waage_l=95;
//enclosure extras
schiene_b=waage_b+1;//bisschen spiel, gegen verkantung
wand_strke=2;//wandstaerke
drillhills2wand=3.5;
//platine
platine_thickn=0.8;
usbc_h=8;//bisschen spiel
usbc_w=30;//bisschen spiel

rotate([0,0,28]) difference() {
    rounded_cube(122,8,1,3.5);
    translate([(122-113)/2,8/2,0]) cylinder(r=1.8,h=5);
    translate([122-(122-113)/2,8/2,0]) cylinder(r=1.8,h=5);
}

translate([4,52,0]) rotate([0,0,-90]) unterseite();


//translate([profil_b,0,profil_h*2-0.5]) rotate([0,180,0]) oberseite();
//battery();

//corner_bearings();
//drill_hills();

module oberseite() {
    difference() {
        union() {
        rounded_cube(profil_b,waage_l,profil_h-0.5,2);
        translate([wand_strke/2,wand_strke/2,profil_h-0.5]) {
                    rounded_cube(profil_b-wand_strke,
                        waage_l-wand_strke,0.5,2);
        }
    }
     difference () {
            union() {
                translate([wand_strke,wand_strke,3]) {
                    rounded_cube(profil_b-wand_strke*2,
                        waage_l-wand_strke*2,profil_h,2);
                }
                translate([profil_b-5,33,profil_h-usbc_h/2]) usbc();
            }
            corner_bearings();
            
        }
        translate([0,0,0])corner_drills();
    }
    
}

module unterseite() {
    difference() {
        rounded_cube(profil_b,waage_l,profil_h,2);
        translate([wand_strke/2,wand_strke/2,6.5]) {
                    rounded_cube(profil_b-wand_strke,
                    waage_l-wand_strke,profil_h,2);
        }
        translate([wand_strke/2,wand_strke/2,6.5]) {
                    rounded_cube(profil_b-wand_strke,
                        waage_l-wand_strke,profil_h,2);
        }
        difference () {
            union() {
                translate([wand_strke,wand_strke,1]) {
                    rounded_cube(profil_b-wand_strke*2,
                        waage_l-wand_strke*2,profil_h,2);
                }
                translate([0,20,profil_h-usbc_h/2]) usbc();
            }
            corner_bearings();
            
        }
        translate([0,0,3])corner_drills();
        translate([(profil_b-waage_b)/2+4+5,wand_strke+drillhills2wand+23,0])cylinder(r=5,h=50);

    }
    //drill hills
    
    translate([wand_strke+drillhills2wand,wand_strke+drillhills2wand+10,1]){
        drill_hills(outer=2, inner=0.4, 
            distancex=profil_b-((wand_strke+drillhills2wand)*2+4),
            distancey=40, h=2.5);
    }
}

module usbc() {
    translate([0,0,0]) rotate([90,0,90])
    rounded_cube(usbc_w,usbc_h,5,r=1);
}

module battery(battery_l=27, battery_w=20, battery_h=5) {
    color("green") {
        translate([center(profil_b,battery_l),waage_l-(battery_w+wand_strke+0.5),3]) cube([battery_l,battery_w,battery_h]);
        echo("Abstand",5);
    }
}

module waage_for_diff() {
    difference() {
        color("aqua") cube([schiene_b, waage_l, profil_h]);
        translate([0,center(waage_l,waage_l/5),5.85]) {
            color("aqua") cube([schiene_b, waage_l/5, profil_h]);
        }
    }
}

module corner_bearings(r=2,h=50) {
    translate([r,r,0])cylinder(r=r,h=h);
    translate([r,waage_l-r,0]) cylinder(r=r,h=h);
    translate([profil_b-r,waage_l-r,0]) cylinder(r=r,h=h);
    translate([profil_b-r,r,0]) cylinder(r=r,h=h);
}

module corner_drills(r=1,h=50,bearings_r=2) {
    translate([bearings_r,bearings_r,0])cylinder(r=r,h=h);
    translate([bearings_r,waage_l-bearings_r,0]) cylinder(r=r,h=h);
    translate([profil_b-bearings_r,waage_l-bearings_r,0]) 
        cylinder(r=r,h=h);
    translate([profil_b-bearings_r,bearings_r,0]) cylinder(r=r,h=h);
}

//ganzes Array von haltern
//distance: hole2
module drill_hills(distancex=10, distancey=10, h=4, outer=1, inner=0.5) {
    translate([outer,distancey+outer,0]) s_drill_hill(h,outer,inner);
    translate([outer+distancex,outer,0]) s_drill_hill(h,outer,inner);
    translate([outer+distancex,distancey+outer,0]) s_drill_hill(h,outer,inner);
}

//einzelner Platinenhalter
module s_drill_hill(h=1, outer=1, inner=0.5) {
    difference() {
        cylinder(r=outer,h=h);
        cylinder(r=inner,h=h);
    }
}


module rounded_cube(w,d,h,r) {
    translate([r,r,0]) {
        minkowski() {
            cube([w-2*r,d-2*r,h/2]);
            cylinder(r=r,h=h/2);
        }
    }
}

   module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
       

       }

function center(w_of_object2center_in, w_of_object2be_centered) 
    = ((w_of_object2center_in)/2)-((w_of_object2be_centered)/2);