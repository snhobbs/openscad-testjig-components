module unthreaded_standoff(height, od, id) {
    through_all_height = 1000;
    translate([0,0,-height/2])difference() {
        cylinder(h=height, d=od, center=true);
        cylinder(h=through_all_height, d=id, center=true);
    };
}
