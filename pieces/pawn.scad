include <../defaults.scad>
include <shared/base.scad>

pawn();

module pawn() {
    base_r = 4;
    base_h = 6;

    body_h = 10;
    head_h = 2.5;

    base(base_r, base_h);

    translate([0, 0, base_h])
        cylinder(body_h, base_r, 2);

    translate([0, 0, base_h + body_h + (head_h / 2)])
        sphere(head_h);

}
