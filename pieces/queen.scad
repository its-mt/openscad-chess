include <../defaults.scad>
include <shared/base.scad>

queem();

module queen() {
    base_r = 5;
    base_h = 9;

    body_h = 17;
    head_h = 6;

    base(base_r, base_h);

    translate([0, 0, base_h])
        cylinder(body_h, base_r, 2);

    translate([0, 0, base_h + body_h])
        queen_head(head_h, 2, 2.5, 2);

}


module queen_head(h, bd, md, td) {
    bottom_height = h / 3;
    top_height = bottom_height * 2;


    cylinder(bottom_height, bd, md);

    translate([0, 0, bottom_height])
        difference() {
            cylinder(h/2, md, md);

            crown_indent = 2;

            union () {
                cylinder(h * 3, md - 1, md - 1, center=true);

                translate([0, 0, h/2])
                    group() {
                        rotate([45, 0, 0])
                            cube([10, crown_indent, crown_indent], center=true);

                        rotate([45, 0, 60])
                            cube([10, crown_indent, crown_indent], center=true);

                        rotate([45, 0, -60])
                            cube([10, crown_indent, crown_indent], center=true);
                    }
            }
        }


}
