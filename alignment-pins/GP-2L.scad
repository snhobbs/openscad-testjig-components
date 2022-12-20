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

use<GP-xL.scad>

module make_GP_2L(body_lip_diameter = body_lip_diameter,
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
    make_GP_xL(body_lip_diameter = body_lip_diameter,
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
head_tip_diameter = head_tip_diameter);
}

make_GP_2L(head_length=head_length, total_length=44, body_length=body_length);