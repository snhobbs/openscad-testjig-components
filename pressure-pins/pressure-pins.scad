module pressure_pin(length, d_tip, b_base=8, thread=2.5, shaft_length = 10) {
    tip_length = length-shaft_length;
    
    difference() {
    union() {
        translate([0,0,tip_length+shaft_length/2])cylinder(h=shaft_length, d=b_base, center=true);
        translate([0,0,tip_length/2])cylinder(h=length-shaft_length, d2=b_base, d1=d_tip, center=true);
    };
    
    depth = length-shaft_length;
    translate([0,0,-depth/2])cylinder(d=thread, h=shaft_length, center=true);
    };  
};

pressure_pin(length=25, d_tip=6, b_base=8, thread=2.5);
