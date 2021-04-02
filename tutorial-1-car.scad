/*https://en.wikibooks.org/wiki/OpenSCAD_Tutorial/Chapter_1*/

/* up the resolution to be suitable for 3D print */
$fa = 1;
$fs = 0.4;

/* car proper */
cube([60,20,10], center=true); /* car bottom */
translate([5,0,10 - 0.001]) /* 0.001 offset so we don't have separate cubes but one object */
  cube([30,20,10], center=true); /* car top */

/* wheels */
/* front left */
translate([-20, -15, 0]) /* x, y, z */
  rotate([90,0,0]) /* 90 degrees around x axis */
  cylinder(h=3, r=8, center=true);

/* front right */
translate([-20, 15, 0]) /* x, y, z */
  rotate([90,0,0]) /* 90 degrees around x axis */
  cylinder(h=3, r=8, center=true);

/* back left */
translate([20, -15, 0]) /* x, y, z */
  rotate([90,0,0]) /* 90 degrees around x axis */
  cylinder(h=3, r=8, center=true);

/* back right */
translate([20, 15, 0]) /* x, y, z */
  rotate([90,0,0]) /* 90 degrees around x axis */
  cylinder(h=3, r=8, center=true);

/* axles */
translate([20, 0, 0])
rotate([90, 0, 0])
cylinder(h=30, r=2, center=true);

translate([-20, 0, 0])
rotate([90, 0, 0])
cylinder(h=30, r=2, center=true);
