// https://github.com/sbambach/MarksEnclosureHelper/blob/master/LETSBUILD-beebox.md

include <hingebox_code.scad>

VIS=false; // Show ghost of other part?

hingedbox( box_def );
/*myperf(box_def);*/

box_def = [60, 40, 20];
wall_thick = 1.2;

top_rat = 0.20;
lip_rat = 0.10;

// hinges - can use M3 bolt as pin
hinge_points = [0.5];
hinge_len = 24;

// catch clasps
catch_points = [0.5];

// screw towers
screw_points = [0.4, 0.6];
screw_punchbottom = true;

// cutouts
module myperf(d) {
  cyl_grid(d, 0.60, 3, 4.8, 6);
}
module cutout_top(d) {myperf(d);}
module cutout_bottom(d) {myperf(d);}
module cutout_left(d) {myperf(d);}
module cutout_right(d) {myperf(d);}
