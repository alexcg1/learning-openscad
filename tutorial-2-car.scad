/*https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_1*/

/* up the resolution to be suitable for 3D print */
$fa = 1;
$fs = 0.4;

/* car proper */
base_height = 10;
top_height = 10;
translate_offset = top_height/2 + base_height/2 - 0.001;
body_roll = 5; // Degrees around x axis

rotate([body_roll, 0, 0]) {
scale([1.2, 1, 1]) {
  cube([60,20,base_height], center=true); /* car base */
  translate([5,0,translate_offset]) /* 0.001 offset so we don't have separate cubes but one object */
    cube([30,20,top_height], center=true); /* car top */
  }
}

/* wheels */
wheel_width = 3;
wheel_radius = 8;
front_wheels_turn = 10;
axle_length = 30;

rotate([0, 0, front_wheels_turn]) {
/* front left */
translate([-20, -15, 0]) /* x, y, z */
  rotate([90,0,0]) /* 90 degrees around x axis */
  cylinder(h=wheel_width, r=wheel_radius, center=true);

/* front right */
translate([-20, 15, 0]) /* x, y, z */
  rotate([90,0,0]) /* 90 degrees around x axis */
  cylinder(h=wheel_width, r=wheel_radius, center=true);

/* front axle */
translate([-20, 0, 0])
rotate([90, 0, 0])
cylinder(h=axle_length, r=2, center=true);
}

/* back left */
translate([20, -15, 0]) /* x, y, z */
  rotate([90,0,0]) /* 90 degrees around x axis */
  cylinder(h=wheel_width, r=wheel_radius, center=true);

/* back right */
translate([20, 15, 0]) /* x, y, z */
  rotate([90,0,0]) /* 90 degrees around x axis */
  cylinder(h=wheel_width, r=wheel_radius, center=true);

/* axles */
translate([20, 0, 0])
rotate([90, 0, 0])
cylinder(h=axle_length, r=2, center=true);

