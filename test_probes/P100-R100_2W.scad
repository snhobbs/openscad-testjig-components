use<../sockets/R100_2W.scad>;
use<P100.scad>

module P100_R100_2W() {
    translate([0,0,0])R100_2W();
    translate([0,0,-8.75])P100();
}
P100_R100_2W();
