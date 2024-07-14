include <../defaults.scad>
include <shared/base.scad>

bishop();

module bishop() {
    base_r = 4;
    base_h = 7.5;

    body_h = 15;
    head_h = 6;

    base(base_r, base_h);

    translate([0, 0, base_h])
        cylinder(body_h, base_r, 2);

    difference() {
        translate([0, 0, base_h + body_h])
            bishop_head(head_h, 2, 2.5, 1.5);

        translate([-1, 0, head_h + body_h + base_h])
            rotate([0, 60, 0])
                cube([7, 40, 0.5], center=true);
    }
}


module bishop_head(h, bd, md, td) {

    bottom_height = h / 3;
    top_height = bottom_height * 2;


    cylinder(bottom_height, bd, md);

    translate([0, 0, bottom_height])
        cylinder(top_height, md, td);
}
