/*
    The base plate is square with a width, length, and height.
    There are mounting holes that go through all
*/

module rectangular_plate_with_holes(size=[100,100,1], holes=[[3, [20,30]], [3, [20,-30]]]) {
    through_all_height = 1000;
    difference() {
        cube(size, center=true);
        for(hole=holes)translate([hole[1][0], hole[1][1], 0])cylinder(h=through_all_height, d=hole[0], center=true);
    };
};


function make_four_corners(x, y) = [for(pt=[[1,1], [-1, 1], [1, -1], [-1, -1]]) [x*pt[0], y*pt[1]]];
    

function get_support_plate_holes() = let(d1=5, d2=3) concat(
        [for(pt=make_four_corners(160/2, 140/2)) [d1, pt]],
        [for(pt=make_four_corners(160/2, 80/2)) [d2, pt]]
);
        

module support_base_plate(size) {
    rectangular_plate_with_holes(size=size, holes=get_support_plate_holes());
};


/* Return the hole pattern for a type A press */
function get_press_pressure_plate_holes(width=170, length=150) = let(d=2.5, x=width/2-5, y1=length/2-55, y2=length/2-35, y3=2.5) concat(
        [for(pt=make_four_corners(x, y1)) [d, pt]],
        [for(pt=make_four_corners(x, y2)) [d, pt]],
        [for(pt=make_four_corners(x, y3)) [d, pt]],
        [[11, [0,0]]] //  # M10
    );


//  Mounting hole at dead center
module press_pressure_plate_type_a_base(size) {
    holes = get_press_pressure_plate_holes(width=size[0], length=size[1]);
    rectangular_plate_with_holes(size=size, holes=holes);
} 
press_pressure_plate_type_a_base([170,150,5]);
//support_base_plate([170,150,5]);