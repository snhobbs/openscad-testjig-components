/* [Options] */
body_lip_diameter = 5.5;
body_diameter = 5;
lower_shaft_diameter = 2.4;
head_diameter = 5.5;
head_length = 6.6;
upper_shaft_diameter = 3.9;
total_length = 44;
body_lip_height = 0.8;
body_length = 23.4;
compression = 0;
retaining_disk_location_from_bottom = 2.54;
retaining_disk_height = 0.05;
retaining_disk_diameter = 4;
head_tip_diameter = 0.25;

module make_GP_xL(body_lip_diameter = body_lip_diameter,
body_diameter = body_diameter,
lower_shaft_diameter = lower_shaft_diameter,
head_diameter = head_diameter,
head_length = head_length,
upper_shaft_diameter = upper_shaft_diameter,
total_length = total_length,
body_lip_height = body_lip_height,
body_length = body_length,
compression = compression,
retaining_disk_location_from_bottom = retaining_disk_location_from_bottom,
retaining_disk_height = retaining_disk_height,
retaining_disk_diameter = retaining_disk_diameter,
head_tip_diameter = head_tip_diameter) {
    /*
    Bottom Shaft
    Retaining Ring
    Continuing Bottom Shaft
    Body
    Body Lip
    Upper Shaft
    Cone
    Compression
    */
    bottom_shaft_length = compression;
    upper_shaft_length = total_length-(retaining_disk_location_from_bottom+retaining_disk_height+bottom_shaft_length+body_length+body_lip_height+head_length);
    
    alignment_position = retaining_disk_location_from_bottom+retaining_disk_height+bottom_shaft_length+body_length;
    translate([0, 0, -alignment_position]) {
    translate([0,0,retaining_disk_location_from_bottom/2])cylinder(d=lower_shaft_diameter, h=retaining_disk_location_from_bottom, center=true);

    translate([0,0,retaining_disk_location_from_bottom])cylinder(d=retaining_disk_diameter, h=retaining_disk_height, center=false);

    translate([0,0,retaining_disk_location_from_bottom+retaining_disk_height])cylinder(d=lower_shaft_diameter, h=bottom_shaft_length);
    
    let(z=retaining_disk_location_from_bottom+retaining_disk_height+bottom_shaft_length) {
        translate([0,0,z])cylinder(d=body_diameter, h=body_length);
    };
    
    
    let(z=retaining_disk_location_from_bottom+retaining_disk_height+bottom_shaft_length+body_length) {
        translate([0,0,z])cylinder(d=body_lip_diameter, h=body_lip_height);
    };
    
    let(z=retaining_disk_location_from_bottom+retaining_disk_height+bottom_shaft_length+body_length+body_lip_height) {
        translate([0,0,z])cylinder(d=upper_shaft_diameter, h=upper_shaft_length);
    };
    
    let(z=retaining_disk_location_from_bottom+retaining_disk_height+bottom_shaft_length+body_length+body_lip_height+upper_shaft_length) {
        translate([0,0,z])cylinder(d1=head_diameter, d2=head_tip_diameter, h=head_length);
    };
};
}


make_GP_xL();