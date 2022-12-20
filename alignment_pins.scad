use<alignment-pins/GP-2S.scad>
use<alignment-pins/GP-2L.scad>
use<alignment-pins/GP-xL.scad>
function defined(a) = str(a) != "undef"; 
module make_single_lip_through_hole(lip_diameter, lip_height, body_diameter) {
    
    through_all_height = 1000;

    cylinder(d=body_diameter, h=through_all_height, center=true);
    assert(defined(lip_height));
    echo(lip_height, "lip_height");
    translate([0,0,-lip_height])cylinder(d=lip_diameter, h=through_all_height);      
};

module alignment_pin_hole(pin) {
    assert(len(pin)>=2);
    lip = pin[0];body = pin[1];
    echo("lip", lip);
    make_single_lip_through_hole(lip[0], lip[1], body[0]);
};

//make_single_lip_through_hole(25, 25, 12, 25);
//alignment_pin_hole([[25, 25], [12, 25]]);