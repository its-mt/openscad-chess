module base (r, h) {
    h1 = h / 2;
    z1 = 0;
    difference() {
        cylinder(h1, r, r);
        translate([0, 0, 0.5])
            cylinder(2, 2, 2);
    }
    h2 = h / 10;
    z2 = z1 + h1;
    translate([0, 0, z2])
        cylinder(h2, r, r*0.8);

    h3 = h / 5;
    z3 = z2 + h2;
    translate([0, 0, z3])
        cylinder(h3, r * 0.8, r);

    h4 = h / 5;
    z4 = z3 + h3;
    translate([0, 0, z4])
        cylinder(h4, r, r);
}
