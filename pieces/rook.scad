include <../defaults.scad>
include <shared/base.scad>

rook();

module rook() {
    base_r = 4;
    base_h = 7.5;

    body_h = 9;
    head_h = 4;

    base(base_r, base_h);

    translate([0, 0, base_h])
        cylinder(body_h, base_r, base_r -1.5);

    translate([0, 0, base_h + body_h])
        rook_head(head_h, 2.5);

}

module rook_head(h, d) {

    bottom_height = h;

    difference() {
        cylinder(h, d, d);

        union () {
            cylinder(h *3, d - 1, d - 1, center=true);

            cutout_w = 1;
            cutout_h = 2;
            cutout_z = h - (cutout_w / 2) +  0.1;
            translate([0, 0, cutout_z])
                group() {
                    cube([10, cutout_w, cutout_h], center=true);

                    rotate([0, 0, 60])
                        cube([10, cutout_w, cutout_h], center=true);

                    rotate([0, 0, -60])
                        cube([10, cutout_w, cutout_h], center=true);
                }
        }
    }

}
