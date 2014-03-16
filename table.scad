$fn=100;

edge=29.5;
board_width=0.5;
support_width=2;
height=16.5;
leg_d=1.5;
support_percent=1/1.61803398875;

cube([edge,edge,0.5], center=true); // Table surface

// edging

rotate([90,0,0])
translate([edge/2,-board_width/2,0])
cylinder(h=edge, d=1, center=true);

rotate([90,0,0])
translate([-edge/2,-board_width/2,0])
cylinder(h=edge, d=1, center=true);

rotate([90,0,90])
translate([-edge/2,-board_width/2,0])
cylinder(h=edge, d=1, center=true);

rotate([90,0,90])
translate([edge/2,-board_width/2,0])
cylinder(h=edge, d=1, center=true);


rotate([90,0,0])
translate([0,-(support_width/2),edge*support_percent/2])
cube([edge*support_percent,support_width,board_width], center=true);

rotate([90,0,0])
translate([0,-(support_width/2),-edge*support_percent/2])
cube([edge*support_percent,support_width,board_width], center=true);

rotate([90,0,90])
translate([0,-(support_width/2),-edge*support_percent/2])
cube([edge*support_percent,support_width,board_width], center=true);

rotate([90,0,90])
translate([0,-(support_width/2),edge*support_percent/2])
cube([edge*support_percent,support_width,board_width], center=true);

translate([edge*support_percent/2,edge*support_percent/2,-height/2])
cylinder(h=height,d=leg_d,center=true);

translate([edge*support_percent/2,-edge*support_percent/2,-height/2])
cylinder(h=height,d=leg_d,center=true);

translate([-edge*support_percent/2,edge*support_percent/2,-height/2])
cylinder(h=height,d=leg_d,center=true);

translate([-edge*support_percent/2,-edge*support_percent/2,-height/2])
cylinder(h=height,d=leg_d,center=true);