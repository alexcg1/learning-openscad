$fa = 1;
$fs = 0.4;

module wheel() {
wheel_sphere_rad = 8;

// Wheel indent
wheel_indent_size = 15;
wheel_indent_distance = 8;

difference(){
  // Basic wheel shape
  sphere(r=wheel_sphere_rad);
  translate([wheel_indent_distance, 0, 0])
  scale([0.5, 1, 1])
  sphere(r=wheel_indent_size);
  translate([-wheel_indent_distance, 0, 0])
  scale([0.5, 1, 1])
  sphere(r=wheel_indent_size);


  // holes
  rotate([0, 90, 0]) {

  // center hole
  small_hole_rad = 1.5;
  // cylinder(h=wheel_sphere_rad, r=2.5, center=true);

  // small holes
  translate([0, 4.5, 0])
  cylinder(h=wheel_sphere_rad, r=small_hole_rad, center=true);
  translate([0, -4.5, 0])
  cylinder(h=wheel_sphere_rad, r=small_hole_rad, center=true);
  translate([4.5, 0, 0])
  cylinder(h=wheel_sphere_rad, r=small_hole_rad, center=true);
  translate([-4.5, 0, 0])
  cylinder(h=wheel_sphere_rad, r=small_hole_rad, center=true);
  }
  }
}

wheel();
