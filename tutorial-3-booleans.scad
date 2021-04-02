$fa = 1;
$fs = 0.4;

// Union
union() {
  sphere(r=10);
  translate([10,0,0])
    sphere(r=10);
}

// Move to new 
translate([0,50,0])

// Difference
difference() {
  sphere(r=10);
  translate([12,0,0])
    sphere(r=10);
}

// Move to new 
translate([0,100,0])

// Difference of 3
difference() {
  sphere(r=10);
  translate([12,0,0])
    sphere(r=10);
  translate([0, -12, 0])
    sphere(r=10);
}

// Move to new 
translate([0,150,0])

// Intersection
  intersection() {
  sphere(r=10);
  translate([12,0,0])
    sphere(r=10);
  }
