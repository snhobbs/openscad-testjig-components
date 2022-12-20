module P100() {
   /* Flat Top */
    head_diameter = 1.5;
    head_height = 2;
    top_shaft_diameter = 0.99;
    body_shaft_diameter = 1.36;
    body_shaft_length = 24.8;
    total_length = 33.35;
    top_shaft_length = total_length-body_shaft_length-head_height;
    
    color("Silver")
    translate([0,0,head_height/2])cylinder(d=head_diameter, h=head_height, center=true);
    
    color("Silver")
    translate([0,0,head_height])cylinder(d=top_shaft_diameter, h=top_shaft_length);
    
    color("Gold")
    translate([0,0,head_height+top_shaft_length])cylinder(h=body_shaft_length, d=body_shaft_diameter);
    
    color("Gold")
    translate([0,0,head_height+top_shaft_length+body_shaft_length])sphere(d=body_shaft_diameter);
}

P100();
